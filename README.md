# Learn Review

This gem is designed to aid in the review of learn lessons. It is under development.

`learn_review` is a command line wrapper for the
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

```sh
    $ gem install learn_review
```

## Usage

To review a learn lesson, navigate to the repository folder and type:

```sh
learn_review
```

The results will be displayed in the terminal.
