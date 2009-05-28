#!/usr/bin/perl
# ==============================================================================
#
#   Helix Framework
#   Copyright (c) 2009, Atma 7
#   ---
#   t/main.t - MySQL database driver tests
#
# ==============================================================================  

use Test::More tests => 9;
use warnings;
use strict;

# ------------------------------------------------------------------------------
# BEGIN()
# test initialization
# ------------------------------------------------------------------------------
BEGIN
{
    use_ok("Helix::Driver::Exceptions");
    use_ok("Helix::Driver::DB");
    use_ok("Helix::Driver::DB::MySQL");
}

# methods
ok( Helix::Driver::DB::MySQL->can("execute"),          "execute method"          );
ok( Helix::Driver::DB::MySQL->can("execute_prepared"), "execute_prepared method" );
ok( Helix::Driver::DB::MySQL->can("fetch"),            "fetch method"            );
ok( Helix::Driver::DB::MySQL->can("fetch_all"),        "fetch_all method"        );
ok( Helix::Driver::DB::MySQL->can("free"),             "free method"             );
ok( Helix::Driver::DB::MySQL->can("call"),             "call method"             );

