package
  Sub::Identify;

use strict;
use warnings;
BEGIN { require '/usr/local/lib/perl/Sub/Identify.pm' };

our $VERSION = '0.05';
our %EXPORT_TAGS;
our @EXPORT_OK;

push @EXPORT_OK, qw( get_code_location );
push @{ $EXPORT_TAGS{all} }, qw( get_code_location );

sub get_code_location ($)
{
  require B;
  my($sub) = @_;
  my $cv = B::svref_2object($sub);
  return ($cv->START->file, $cv->START->line);
}

1;
