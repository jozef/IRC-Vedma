package IRC::Vedma::SPc;

=head1 NAME

IRC::Vedma::SPc - build-time system path configuration

=cut

use warnings;
use strict;

our $VERSION = '0.05_01';

use File::Spec;

sub _path_types {qw(
	sysconfdir
	logdir
)};

=head1 PATHS

=head2 prefix

=head2 sysconfdir

=head2 datadir

=cut

sub prefix     { use Sys::Path; Sys::Path->find_distribution_root(__PACKAGE__); };
sub sysconfdir { File::Spec->catdir(__PACKAGE__->prefix, 'conf') };
sub logdir     { File::Spec->catdir(__PACKAGE__->prefix, 'log') };
sub sharedstatedir { File::Spec->catdir(__PACKAGE__->prefix, 'shared-state') };


1;


__END__

=head1 AUTHOR

Jozef Kutej

=cut
