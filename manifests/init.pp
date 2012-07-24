# == Class: motd
#
# Full description of class motd here.
#
# === Parameters
#
# Document parameters here.
#
# $contact
#   Email address for reporting problems, to be displayed in the motd
# $messages
#   An array of strings which are displayed as a bulleted list in the motd
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if it
#   has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should not be used in preference to class parameters  as of
#   Puppet 2.6.)
#
# === Examples
#
#  class { motd:
#    contact => 'help@example.org',
#    messages => [ 'System will be down this monday', 'New version of perl installed' ]
#  }
#
# === Authors
#
# Miles Davis <miles@cs.stanford.edu>
#
# === Copyright
#
# Copyright 2012 Your name here, unless otherwise noted.
#
class motd($contact='action@cs.stanford.edu', $messages='') {

	file {
		"/etc/motd":
			owner  => "root",
			group  => "root",
			mode   => 644,
            content => template("motd/motd.erb");
	}
}

