--
-- This script sets up the necessary modules, profiles, and roles and creates 
-- a 'base node cluster' blueprint for the supplied organization.
--


--
-- Config
--
set @org_id := 1;
set @role := 'exampleorg::role';
set @roles_repo_name := 'Example Roles';
set @roles_repo_url := 'git@github.com:Example/puppet-org-example.git';
set @roles_module_short_name = 'exampleorg';
set @roles_module_name = 'example/exampleorg';


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
  (@org_id, 'stringed::profile::base');
set @profile_id = (select last_insert_id());

insert into role_profile (organization_id, role_id, profile_id)
values
  (@org_id, @role_id, @profile_id);

--
-- Add the modules
--

-- Puppetlabs
insert into module_source (organization_id, name, type, url)
values
  (@org_id, 'Puppetlabs Forge', 'forge', 'http://forge.puppetlabs.com');
set @src_id = (select last_insert_id());

insert into module (organization_id, module_source_id, short_name, name)
values
  (@org_id, @src_id, 'ntp', 'puppetlabs/ntp'),
  (@org_id, @src_id, 'resolvconf', 'thias/resolvconf'),
  (@org_id, @src_id, 'firewall', 'puppetlabs/firewall');

-- SSH
insert into module_source (organization_id, name, url)
values
  (@org_id, 'Bitlancer SSH', 'git@github.com:Bitlancer/puppet-ssh.git');

insert into module (organization_id, module_source_id, short_name, name)
values
  (@org_id, last_insert_id(), 'ssh', 'bitlancer/ssh');

-- Sudo
insert into module_source (organization_id, name, url)
values
  (@org_id, 'Bitlancer Sudo', 'git@github.com:Bitlancer/puppet-sudo.git');

insert into module (organization_id, module_source_id, short_name, name)
values
  (@org_id, last_insert_id(), 'sudo', 'bitlancer/sudo');

-- SSSD
insert into module_source (organization_id, name, url)
values
  (@org_id, 'Bitlancer SSSD', 'git@github.com:Bitlancer/puppet-sssd.git');

insert into module (organization_id, module_source_id, short_name, name, path)
values
  (@org_id, last_insert_id(), 'sssd', 'bitlancer/sssd', 'modules/sssd');

-- MOTD
insert into module_source (organization_id, name, url)
values
  (@org_id, 'Bitlancer MOTD', 'git@github.com:Bitlancer/puppet-motd.git');

insert into module (organization_id, module_source_id, short_name, name)
values
  (@org_id, last_insert_id(), 'motd', 'bitlancer/motd');

-- Profiles
insert into module_source (organization_id, name, url)
values
  (@org_id, 'Bitlancer Strings Profiles', 'git@github.com:Bitlancer/puppet-stringed.git');

insert into module (organization_id, module_source_id, short_name, name)
values
  (@org_id, last_insert_id(), 'stringed', 'bitlancer/stringed');

-- Roles
insert into module_source (organization_id, name, url)
values
  (@org_id, @roles_repo_name, @roles_repo_url);

insert into module (organization_id, module_source_id, short_name, name)
values
  (@org_id, last_insert_id(), @roles_module_short_name, @roles_module_name);

insert into profile_module (organization_id, profile_id, module_id)
(
  select @org_id, @profile_id, id
  from module
  where organization_id = @org_id and
    module.name != @roles_module_name
);

--
-- Add the blueprint
--
insert into blueprint (organization_id, name, short_description, description)
values
  (@org_id, 'base node cluster', 'One or more generic servers', 'One or more generic servers');
set @blueprint_id = (select last_insert_id());

insert into blueprint_part (organization_id, device_type_id, blueprint_id,
role_id, name, description, minimum, maximum)
values
  (@org_id, 1, @blueprint_id, @role_id, 'base node', 'A generic server', 1, 9);

