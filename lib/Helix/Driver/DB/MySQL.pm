package Helix::Driver::DB::MySQL;
# ==============================================================================
#
#   Helix Framework
#   Copyright (c) 2009, Atma 7
#   ---
#   Helix/Driver/DB/MySQL - MySQL DBMS driver
#
# ==============================================================================

use base qw/Helix::Driver::DB/;
use warnings;
use strict;

our $VERSION = "0.01"; # 2009-02-03 00:50:31

# ------------------------------------------------------------------------------
# \% new()
# constructor
# ------------------------------------------------------------------------------
sub new
{
    my ($class, $db, $user, $password, $host, $port, $cfg, $self);

    ($class, $db, $user, $password, $host, $port, $cfg) = @_;

    $self = $class->SUPER::new
    (
        "mysql", $db, $user, $password, $host || "localhost", $port || "3306", $cfg
    );

    return $self;
}

1;

__END__

=head1 NAME

Helix::Driver::DB::MySQL - MySQL database driver.

=head1 SYNOPSIS

Somewhere in application controller:

    my ($r, $db);

    $r  = Helix::Core::Registry->get_instance;
    $db = $r->{"driver"}->get_object("Helix::Driver::DB::MySQL");

    $db->execute("SELECT * FROM news LIMIT ?, ?", 20, 10);
    $news = $db->fetch_all;

    foreach (@$news)
    {
        # ...
    }

    $db->free;

=head1 DESCRIPTION

The I<Helix::Driver::DB::MySQL> is the MySQL database driver for 
I<Helix Framework>. MySQL versions 4.0+ are supported. 

To use this driver you must have L<DBI> and L<DBD::mysql> packages installed. 

=head1 METHODS

=head2 new($dbd, $db, $user, $password, $host, $port, $cfg)

Class constructor. Sets initial class data. Only a wrapper over generic class
constructor - see 
L<Helix::Driver::DB/new($dbd, $db, $user, $password, $host, $port, $cfg)>
for more information.

=head2 execute($query, @params)

Inherited from 
L<Helix::Driver::DB/execute($query, @params)>.

=head2 execute_prepared(@params)

Inherited from 
L<Helix::Driver::DB/execute_prepared(@params)>.

=head2 fetch()

Inherited from 
L<Helix::Driver::DB/fetch()>.

=head2 fetch_all()

Inherited from 
L<Helix::Driver::DB/fetch_all()>.

=head2 free()

Inherited from 
L<Helix::Driver::DB/free()>.

=head2 call($function, @params)

Inherited from
L<Helix::Driver::DB/call($function, @params)>.
I<Warning!> Do not use this function, it is not yet implemented for MySQL DBMS.

=head1 SEE ALSO

L<Helix>, L<Helix::Driver::DB>

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Anton Belousov, E<lt>abel@cpan.orgE<gt>

=head1 COPYRIGHT

Copyright (c) 2009, Atma 7, L<http://www.atma7.com>

=cut
