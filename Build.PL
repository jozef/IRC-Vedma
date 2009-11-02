use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'IRC::Vedma',
    license             => 'perl',
    dist_author         => q{Jozef Kutej <jkutej@cpan.org>},
    dist_version_from   => 'lib/IRC/Vedma.pm',
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'IRC-Vedma-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
