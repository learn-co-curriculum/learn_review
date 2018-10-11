# Learn Create

This gem is designed to aid in the creation of learn lessons.

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

Before using `learn_create`, you must install `hub`

```sh
    $ brew install hub
```

Once `hub` is installed, install the `learn_create` as:

```sh
    $ gem install learn_create
```

## Usage

To create a new learn repository, navigate to the folder where you'd like your repo to be created locally. Type:

```sh
learn_create
```

Follow the command line prompts for setting up and naming your repository. The repo will be created locally and pushed to GitHub.
