
use v6.c;



=begin pod

=head1 NAME

Acme::Scurvy::Whoreson::BilgeRat::Backend::lala - generate insults in the style of one of London.pm's bots

=head1 SYNOPSIS

    use Acme::Scurvy::Whoreson::BilgeRat;

    my $insultgenerator = Acme::Scurvy::Whoreson::BilgeRat->new(
        language => 'lala'
    );

    print $insultgenerator; # prints a piratical insult


=head1 DESCRIPTION

The IRC channel #london.pm on the rhizomatic network used to have a bot, 
called Lala, that would insult you in her own inimitable style.

This is a backed for C<Acme::Scurvy::Whoreson::BilgeRat> that reproduces that style.

It's useless to anyone but this one particular project I'm working on. 
But since when has that stopped me?

=head1 AUTHOR

Simon Wistow <simon@thegestalt.org>

based on code by

Jonathan Stowe <jns@gellyfish.com>

=head1 COPYRIGHT

Copyright 2005, Simon Wistow

Distributed under the same terms as Perl itself.

=head1 SEE ALSO

http://london.pm.org

=end pod


class Acme::Insult::Lala {

    has @!noun;
    has @!adjective-one;
    has @!adjective-two;

    submethod BUILD() {
        my %h = %?RESOURCES<lala.txt>.lines>>.split(/\s+/).map( -> ($a, $b, $c) { a => $a, b => $b, c => $c }).flat.classify(*.key, as => *.value);
        @!adjective-one = %h<a>.list;
        @!adjective-two = %h<b>.list;
        @!noun          = %h<c>.list;
    }

    method generate-insult() returns Str {
        (@!adjective-one.pick, @!adjective-two.pick, @!noun.pick).join(' ');
    }

}

# vim: expandtab shiftwidth=4 ft=perl6
