# IMPORTANT: if you delete this file your app will not work as
# expected.  you have been warned
use inc::Module::Install;

name 'Acme::Blarghy::McBlarghBlargh';
all_from 'lib/Acme/Blarghy/McblarghBlargh.pm';

requires 'Net::Twitter';
requires 'Moose';



install_script 'script/*.pl';
auto_install;
WriteAll;
