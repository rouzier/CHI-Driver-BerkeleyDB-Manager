package CHI::Driver::BerkeleyDB::Manager::t::CHIDriverTests;
=head1 NAME

CHI::Driver::BerkeleyDB::Manager::t::CHIDriverTests add documentation

=cut

=head1 DESCRIPTION

CHI::Driver::BerkeleyDB::Manager::t::CHIDriverTests

=cut

use strict;
use warnings;
use CHI::Test;
use File::Temp qw(tempdir);
use base qw(CHI::t::Driver);
our $root_dir;

=head2 testing_driver_class

The name of teh driver to be test

=cut

sub testing_driver_class { 'CHI::Driver::BerkeleyDB::Manager' }

=head2 test_namespaces

The test namespaces

=cut

sub test_namespaces {}

=head2 new_cache_options

Add new options for redis

=cut

sub new_cache_options {
    my $self = shift;
    $root_dir ||= tempdir( "chi-driver-berkeleydb-manager-XXXX", TMPDIR => 1, CLEANUP => 1 );
    return (
        $self->SUPER::new_cache_options(),
        home => $root_dir,
        create => 1,
    );
}

=head1 AUTHOR

Inverse inc. <info@inverse.ca>

=head1 COPYRIGHT

Copyright (C) 2005-2014 Inverse inc.

=head1 LICENSE

This program is free software; you can redistribute it and::or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
USA.

=cut

1;

