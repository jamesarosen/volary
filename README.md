## Overview

[Ember-I18n](https://github.com/jamesarosen/ember-i18n) declares the following dependencies:

```json
"cldr":       "^1.0",
"jquery":     ">=1.7 <3",
"handlebars": "^1.0",
"ember":      ">0.9.7 <2"
```

Running `bower install` will install the *latest* versions of those libraries that satisfy
the specified versions. That's good for helping me stay current, but bad for ensuring I
don't introduce regressions. I'd like to be able to test against multiple sets to ensure
robustness. Volary does just that.

## Getting Started

### Installation

`npm install -g volary`

### Defining Dependency Sets

Define the sets of dependencies in `volary.json`. Volary will merge those with the
depencencies in `bower.json`. For Ember-I18n, `volary.json` might be

```json
{
  "ember-1-0": {
    "jquery": "1.7.2"
    "ember":  "1.0.1"
  },
  "ember-1-1": {
    "jquery": "1.8.0"
    "ember":  "1.1.0"
  },
  "ember-1-2": {
    "jquery": "1.8.0"
    "ember":  "1.2.0"
  }
}
```

### Generating Multiple `bower.json` Files

`volary generate` will merge the `volary.json` and `bower.json`, generating a
`volary/bower.ember-1-0.json` with

```json
"cldr":       "^1.0",
"jquery":     "1.7.2",
"handlebars": "^1.0",
"ember":      "1.0.1"
```

and a `volary/bower.ember-1-1.json` with

```json
"cldr":       "^1.0",
"jquery":     "1.8.0",
"handlebars": "^1.0",
"ember":      "1.1.0"
```

### Installing Dependency Sets

`volary install` will run `bower install` with each of the `volary/bower.*.json`
files. In the case above, it will install dependencies into `volary/ember-1-0/`
and `volary/ember-1-1/`.

## References

 * https://github.com/bower/bower/pull/1127
 * https://github.com/bower/bower/issues/1107
 * https://github.com/bower/config/pull/12
 * https://github.com/thoughtbot/appraisal
