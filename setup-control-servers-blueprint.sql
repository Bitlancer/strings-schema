--
-- Sets up the control servers blueprint
--


SET @org_id := 3;
SET @jump_server_role_name := 'eduporiumorg::role::jump_server';



insert into blueprint (organization_id, name, short_description, description) 
values
  (@org_id, 'control servers', 'Strings control servers', 'Strings control servers');
SET @blueprint_id = (SELECT last_insert_id());

insert into role (organization_id, name)
values
  (@org_id, @jump_server_role_name);
SET @jump_server_role_id = (SELECT last_insert_id());

insert into role_profile (organization_id, role_id, profile_id)
(
  SELECT @org_id, @jump_server_role_id, id 
  FROM profile 
  WHERE organization_id = @org_id AND
    name = 'stringed::profile::base'
);

insert into blueprint_part (organization_id, device_type_id, blueprint_id, role_id, name, description, maximum)
values
    (@org_id, 1, @blueprint_id, @jump_server_role_id, 'jump server', 'A Strings jump server', 9);
