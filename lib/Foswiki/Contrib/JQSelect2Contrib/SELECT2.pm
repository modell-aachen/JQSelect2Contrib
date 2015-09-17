# Plugin for Foswiki - The Free and Open Source Wiki, http://foswiki.org/
# 
# Copyright (C) 2012 Modell Aachen GmbH, http://modell-aachen.de/
# 
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version. 
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details, published at
# http://www.gnu.org/copyleft/gpl.html

package Foswiki::Contrib::JQSelect2Contrib::SELECT2;
use strict;

use Foswiki::Plugins::JQueryPlugin::Plugin;
our @ISA = qw( Foswiki::Plugins::JQueryPlugin::Plugin );

=begin TML

---+ package Foswiki::Contrib::JQSelect2Contrib::SELECT2

This is the perl stub for the jquery.select2 plugin.

=cut

=begin TML

---++ ClassMethod new( $class, ... )

Constructor

=cut

sub new {
  my $class = shift;

  my $this = bless($class->SUPER::new( 
    $Foswiki::Plugins::SESSION,
    name => 'Select2',
    version => '4.0',
    author => 'Kevin Brown, Igor Vaynberg and Select2 contributors',
    homepage => 'http://ivaynberg.github.com/select2/',
    puburl => '%PUBURLPATH%/%SYSTEMWEB%/JQSelect2Contrib',
    documentation => "$Foswiki::cfg{SystemWebName}.JQSelect2Contrib",
    javascript => ['jquery.select2.init.js', 'jquery.select2.js'],
    css => ['jquery.select2.css'],
    dependencies => ['livequery', 'metadata'],
    @_
  ), $class);

  return $this;
}

1;

