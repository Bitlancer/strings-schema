--
-- Setup a LAMP (Linux Apache PHP MySQL) blueprint
--

SET @org_id := 4;
SET @puppetlabs_forge_source_id := 52;
SET @lamp_role_name := 'omegaorg::role::lamp';


insert into module (organization_id, module_source_id, short_name, name)
values
  (@org_id, @puppetlabs_forge_source_id, 'apache', 'puppetlabs/apache'),
  (@org_id, @puppetlabs_forge_source_id, 'php', 'thias/php'),
  (@org_id, @puppetlabs_forge_source_id, 'mysql', 'puppetlabs/mysql');

insert into profile (organization_id, name)
values
  (@org_id, 'stringed::profile::apache_phpfpm');
SET @apache_phpfpm_profile_id = (SELECT last_insert_id());

insert into profile (organization_id, name)
values
  (@org_id, 'stringed::profile::mysql');
SET @mysql_profile_id = (SELECT last_insert_id());

insert into profile_module (organization_id, profile_id, module_id)
(
  SELECT @org_id, @apache_phpfpm_profile_id, id
  FROM module
  WHERE organization_id = @org_id AND
    short_name IN ('apache', 'php')
);

insert into profile_module (organization_id, profile_id, module_id)
(
  SELECT @org_id, @mysql_profile_id, id
  FROM module
  WHERE organization_id = @org_id AND
    short_name IN ('mysql')
);

insert into role (organization_id, name)
values
  (@org_id, @lamp_role_name);
SET @lamp_role_id = (SELECT last_insert_id());

insert into role_profile (organization_id, role_id, profile_id)
values
  (@org_id, @lamp_role_id, @apache_phpfpm_profile_id),
  (@org_id, @lamp_role_id, @mysql_profile_id);

insert into blueprint (organization_id, name, short_description, description)
values
  (@org_id, 'LAMP server', 'A LAMP server', 'A linux server running Apache, PHP-FPM, & MySQL');
SET @blueprint_id = (SELECT last_insert_id());

insert into blueprint_part (organization_id, device_type_id, blueprint_id, role_id, name, description, maximum)
values
  (@org_id, 1, @blueprint_id, @lamp_role_id, 'LAMP server', 'A LAMP server', 9);


