strings-schema
==============

Bitlancer Strings MySQL Schema

Contains:

* schema.sql: the strings schema
* reset_auto_incr.sh: script for resetting the auto increment value witin a mysqldunp
* initial-data-set.sql: a data set intended for use in setting a dev env

## Initial data set

Contains enough to get your dev environment up and running. It will:

* Create a single organization, test
* Create a single user, admin
* Setup a single provider, Rackspace

Prior to importing the data you will want to populate/change a few
values so the import is sufficient to complete the setup process.

1) Change the email address for the admin user. Once your dev version
of strings is running, you can use the "Forgot Password" link on the logon
page to set the initial password.

2) Configure the provider details within the implementation_attribute table.
You will need to set username and apl_key.

3) Set the DNS domain ID within the config table. Copy the ID for the domain
you're using from Rackspace's control panel.


