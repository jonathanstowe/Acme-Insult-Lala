# Acme::Insult::Lala

Construct an insulting epithet in the manner of an old IRC bot

![Build Status](https://github.com/jonathanstowe/Acme-Insult-Lala/workflows/CI/badge.svg)

## Synopsis

```perl6

use Acme::Insult::Lala;

my $lala = Acme::Insult::Lala.new;

say $lala.generate-insult;

```

## Description

This makes an insulting epithet in the manner of 'lala' an IRC bot
that used to be on the #london.pm channel back in the mists of time.

I think I originally got the source data from an analysis of 
epithets in Shakespeare plays or something, but I can't actually
remember it was that long ago. Anyhow at some point the lovely
Simon Wistow retrieved the basic code and data and incorporated
it in the Perl 5 module [Acme::Scurvy::Whoreson::BilgeRat::Backend::insultserver](http://search.cpan.org/~simonw/Acme-Scurvy-Whoreson-BilgeRat-Backend-insultserver-1.0/).
From whence I retrieved the data and made it into a Raku
module.

There's also a handy script that does this for you without having to make any code:

   generate-insult [--number|-n=<number>]

I suppose you could use it for generating test data or something
but there's nothing more to it than you see in the Synopsis.

## Installation

Assuming you have a working Rakudo installation you should be able to do :

    zef install Acme::Insult::Lala

## Support

If you don't like the language, don't use it. If you don't think
it's insulting enough, write your own.

In the unlikely event you should find a bug please report it at
https://github.com/jonathanstowe/Acme-Insult-Lala/issues

## Licence and Copyright

I guess the data in resources/lala.txt should properly be
considered to be in the public domain as it's likely that it
came from some such source in the first place.  All the
rest of the code is free software and licensed under the terms
described in the [LICENCE](LICENCE) file.

© Jonathan Stowe 2016 - 2023

