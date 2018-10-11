require 'json'
require 'require_all'
require 'odyssey'
require 'awesome_print'

class LearnReview
  def initialize(filename = 'README.md')
    puts "Checking the contents of #{filename}..."
    puts ''
    fh = open filename
    content = fh.read
    fh.close

    average_readability = Odyssey.ari(content, false)
    coleman_liau = Odyssey.coleman_liau(content, false)
    grade_level = Odyssey.flesch_kincaid_grade_level(content, false)
    readability_ease = Odyssey.flesch_kincaid_reading_ease(content, false)
    gunning_fog = Odyssey.gunning_fog(content, false)
    smog = Odyssey.smog(content, false)
    text = Odyssey.fake_formula(content, true)

    gender_specific_words = %w[he she him her]
                            .select do |word|
      text['score']['words'].include?(word)
    end

    relevant_words = ['readme', 'code along', 'codealong', 'lab', 'test']
                     .select do |word|
      text['score']['words'].include?(word)
    end

    irrelevant_words = ['a', 'an', 'and', 'the', 'like', 'with', 'through', 'over', 'before', 'at', 'of', 'to', 'in', 'for', 'on', 'by', 'between', 'after', 'since', 'without', 'under', 'beyond', 'near', 'above', 'off', 'down', 'except', 'about', 'learn', 'co', 'open', 'really', "we're"]
    word_hash = {}
    text['score']['words']
      .reject { |word| irrelevant_words.include?(word.downcase) }
      .each do |word|
      word_hash.key?(word) ? word_hash[word] += 1 : word_hash[word] = 1
    end

    puts 'Automated Readability Index (1 => Kindergarten, 8 => 7th Grade, 14+ => College Level):'
    puts average_readability
    puts ''
    puts 'Coleman Liau Index (1 => Kindergarten, 8 => 7th Grade, 14+ => College Level):'
    puts coleman_liau
    puts ''
    puts 'Flesch Kincaid Grade Level (1 => Kindergarten, 8 => 7th Grade, 14+ => College Level):'
    puts grade_level
    puts ''
    puts 'Flesch Kincaid Reading Ease (100.0-90.0 => 5th Grade, 80.0-70.0 => 7th Grade, 50.0-30.0 => College Level):'
    puts readability_ease
    puts ''
    puts 'Gunning Fog Index (7 => 7th grade, 10 => 10th Grade, 13-16 => College Level):'
    puts gunning_fog
    puts ''
    puts 'Smog Index (7 => 7th grade, 10 => 10th Grade, 13-16 => College Level):'
    puts smog
    puts ''

    puts "Gender specific words: #{gender_specific_words}"
  end
end
