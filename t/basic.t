use strict;
use warnings;
use Test::More tests => 1;

my($file, $location) = eval q{ 
  use Sub::Identify qw( get_code_location );
  get_code_location sub {};
};
is $@, '';
note "file     = $file";
note "location = $location";
