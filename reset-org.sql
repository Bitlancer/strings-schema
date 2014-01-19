--
-- A SQL script for resetting a demo account. It does not touch the IaaS provider settings or blueprints, roles, profiles, etc.
-- WARNING: Prior to running this script, you should delete any active formations within the CP. This will ensure all devices and their corresponding dns entries are deleted on the provider side. 
--

SET @org_id := 1;
SET @user_name := 'mjuszczak';
SET @user_first_name := 'Matt';
SET @user_last_name := 'Juszczak';
SET @user_email := 'mjuszczak@bitlancer.com';

-- Reset
DELETE FROM application WHERE organization_id = @org_id;
DELETE FROM application_formation WHERE organization_id = @org_id;
DELETE FROM audit WHERE organization_id = @org_id;
DELETE FROM audit_delta WHERE organization_id = @org_id;
DELETE FROM device WHERE organization_id = @org_id;
DELETE FROM device_attribute WHERE organization_id = @org_id;
DELETE FROM device_dns WHERE organization_id = @org_id;
DELETE FROM formation WHERE organization_id = @org_id;
DELETE FROM hiera WHERE organization_id = @org_id;
DELETE FROM queued_job WHERE organization_id = @org_id;
DELETE FROM queued_job_log WHERE organization_id = @org_id;
DELETE FROM script WHERE organization_id = @org_id;
DELETE FROM sudo WHERE organization_id = @org_id;
DELETE FROM sudo_attribute WHERE organization_id = @org_id;
DELETE FROM team WHERE organization_id = @org_id;
DELETE FROM team_application WHERE organization_id = @org_id;
DELETE FROM team_application_sudo WHERE organization_id = @org_id;
DELETE FROM team_device WHERE organization_id = @org_id;
DELETE FROM team_device_sudo WHERE organization_id = @org_id;
DELETE FROM team_formation WHERE organization_id = @org_id;
DELETE FROM team_formation_sudo WHERE organization_id = @org_id;
DELETE FROM team_role WHERE organization_id = @org_id;
DELETE FROM team_role_sudo WHERE organization_id = @org_id;
DELETE FROM user WHERE organization_id = @org_id;
DELETE FROM user_attribute WHERE organization_id = @org_id;
DELETE FROM user_key WHERE organization_id = @org_id;
DELETE FROM user_team WHERE organization_id = @org_id;
UPDATE dictionary_word set status = 0 where organization_id = @org_id;

-- Create the first user
insert into user (organization_id, name, first_name, last_name, email, is_admin)
values
  (@org_id, @user_name, @user_first_name, @user_last_name, @user_email, 1);
  SET @user_id = (SELECT last_insert_id());

insert into user_attribute (organization_id, user_id, var, val)
values
  (@org_id, @user_id, 'posix.uid', '1000'),
  (@org_id, @user_id, 'posix.gid', '1000'),
  (@org_id, @user_id, 'posix.shell', '/bin/bash');
