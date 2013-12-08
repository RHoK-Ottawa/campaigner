Campaigner
=======================

## Overview

An app to facilitate running petition campaigns with a decoupled  back-end serving HTML5 and native apps.

Petition creation and data storage is handled by a Ruby on Rails back end. Rails serves petitions as JSON to public-facing front-ends, and accepts a JSON stream of signatures. 

## Directory structure

Most of the repository is for running the Rails application.

A web front-end designed for Amnesty International is provided in [/public](/public). Design materials are in [/design](/design).

## How to get started developing

You will need:

* [Ruby](https://www.ruby-lang.org/en/)
* [Bundler](http://bundler.io/)
* [SQLlite](https://sqlite.org/)
* [Rails](http://rubyonrails.org/)
* [Git](http://git-scm.com/)

Linux machines are good to go with the above, more-or-less. Congratulations! Nonetheless, [Ryan Bigg](http://ryanbigg.com) has writen [a good tutorial](http://ryanbigg.com/2010/12/ubuntu-ruby-rvm-rails-and-you/) for setting yourself up on Linux, just in case.

If you are on a PC or a Mac and this is your first time setting up you development machine for Ruby or Rails, [Rails installer](http://railsinstaller.org/en) can save you time and headache.

If you're on a Mac and you'd rather configure things yourself, you'll need XCode, Command Line Tools, and Homebrew at minimum. [Peter Rhodes](https://github.com/createdbypete) has writen [a how-to](http://createdbypete.com/articles/ruby-on-rails-development-with-mac-os-x-mountain-lion/) for starting your first Rails project on OSX.

If you're on Windows PC, use the Rails installer and enjoy the hours (days!) of pain you have just avoided. Α Windows development environment is not recommended for Rails projects, however.

## Code promotion

Create a fork of this repository and make the project your own! Have a feature you'd like to contribute? Send a pull request.

## Where to find more information

* [Docs](/docs) provides documentation for extending development, installing and operating the app, and manipulating the API.
* Amnesty International Canada's [Digital Communications Manual](http://amnesty-international-digital-publishing-manual.readthedocs.org/en/latest/) provides context for the creation of this project and background on doing petitioning and advocacy work online.
* Amnesty International Canada's [Best Practices](https://github.com/AmnestyInternational/bestpractices) document sets guidelines for coding and development projects