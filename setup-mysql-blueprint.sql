--
-- Config
--
set @org_id := 1;
set @role := 'exampleorg::role::mysql_server';


-- Main (run queries)

--
-- Add the roles/profiles
--
insert into role (organization_id, name)
values
  (@org_id, @role);
set @role_id = (select last_insert_id());

insert into profile (organization_id, name)
values
  (@org_id, 'stringed::profile::mysql');
set @profile_id = (select last_insert_id());

insert into role_profile (organization_id, role_id, profile_id)
values
  (@org_id, @role_id, @profile_id);

--
-- Add the modules
--

insert into module (organization_id, module_source_id, short_name, name)
(
  SELECT @org_id, id, 'mysql', 'puppetlabs/mysql'
  FROM module_source
  WHERE module_source.organization_id = @org_id and
    module_source.type = 'forge' and
    name = 'Puppetlabs Forge'
  LIMIT 1
);

SET @module_id = (select last_insert_id());

insert into profile_module (organization_id, profile_id, module_id)
values
  (@org_id, @profile_id, @module_id);

--
-- Add the blueprint
--
insert into blueprint (organization_id, name, short_description, description)
values
  (@org_id, 'mysql cluster', 'One or more mysql servers', 'One or more mysql servers');
set @blueprint_id = (select last_insert_id());

insert into blueprint_part (organization_id, device_type_id, blueprint_id,
role_id, name, description, minimum, maximum)
values
  (@org_id, 1, @blueprint_id, @role_id, 'mysql server', 'A mysql server', 1, 9);

