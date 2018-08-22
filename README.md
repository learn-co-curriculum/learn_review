# Readability Score

This gem is in development and may be error prone.

Readability Score is a command line wrapper for the
[Odyssey](https://github.com/cameronsutter/odyssey) gem that allows for simple
and fast readability scoring for markdown files via the command line.

**Note:** Due to a bug in the current version of Odyssey, after the odyssey gem is
installed, you must change the name of _one_ file, `formula.rb` to `_formula.rb`
so that it is the first file in its folder.

The file is located within the odyssey gem, and should be found somewhere similar to:

```sh
/Users/.../.rvm/gems/ruby-2.5.1/gems/odyssey-0.1.8/lib/formulas
```

## Installation

Install it yourself as:

    $ gem install readability_score

## Usage

Once installed, your terminal should now be able to run:

    $ rscore

Navigate to a folder with a markdown file. By default, `rscore` will look for
`README.md`, but you can also specify a filename:

    $ rscore LICENSE.md
