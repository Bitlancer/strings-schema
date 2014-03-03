--
-- This SQL script will:
--   * create a new organization
--   * create the organization's first user
--   * setup rackspace as the organization's provider
--

--
-- Org config
--
SET @org_name := 'example';
SET @org_short_name := 'example';
SET @org_can_sync_to_ldap := 0;
SET @org_base_dn := "dc=example-infra,dc=net";

--
-- DNS config
--
SET @dns_external_domain := 'example-infra.net';
SET @dns_internal_domain := 'int.example-infra.net';

SET @dns_external_region_id := 'DFW';
SET @dns_external_domain_id := '';
SET @dns_external_record_ttl := '300';
SET @dns_internal_network_attr := 'implementation.address.private.4';

--
-- User config
--
SET @user_name := 'mjuszczak';
SET @user_first_name := 'Matt';
SET @user_last_name := 'Juszczak';
SET @user_email := 'mjuszczak@bitlancer.com';

--
-- Provider/Implementation config
--
SET @provider_id := 1; -- Rackspace
SET @implementation_name := 'Rackspace';
SET @implementation_image_schedule_retention := 0;

SET @implementation_username := 'example';
SET @implementation_api_key := '';
SET @implementation_dfw_image := 'da1f0392-8c64-468f-a839-a9e56caebf07';


-- Main (Run the queries)

-- Create the organization
insert into organization (name,short_name,can_sync_to_ldap)
values
  (@org_name, @org_short_name, @org_can_sync_to_ldap);
SET @org_id = (SELECT last_insert_id());

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

-- Set the organization's implementation
insert into implementation (organization_id, provider_id, name)
values
  (@org_id, @provider_id, @implementation_name);
SET @implementation_id = (SELECT last_insert_id());
insert into implementation_attribute (organization_id, implementation_id, var, val)
values
  (@org_id, @implementation_id, 'username', @implementation_username),
  (@org_id, @implementation_id, 'api_key', @implementation_api_key),
  (@org_id, @implementation_id, 'identity_api_endpoint', 'https://identity.api.rackspacecloud.com/v2.0/'),
  (@org_id, @implementation_id, 'regions', '[{"id":"dfw","name":"dfw01","description":"Dallas/Fort Worth"}]'),
  (@org_id, @implementation_id, 'images', '{"dfw":[{"name":"default","image_id":"IMAGE_ID"}]}');
update implementation_attribute
set val = replace(val,'IMAGE_ID',@implementation_dfw_image)
where var = 'images' and organization_id = @org_id;

-- Setup the organization's config vars
insert into config (organization_id, var, val)
values
  (@org_id, 'posix.next_uid', '1001'),
  (@org_id, 'posix.default_shell', '/bin/bash'),
  (@org_id, 'ldap.basedn', @org_base_dn),
  (@org_id, 'implementation.image_schedule.retention', @implementation_image_schedule_retention),
  (@org_id, 'dns.external.domain', @dns_external_domain),
  (@org_id, 'dns.external.region_id', @dns_external_region_id),
  (@org_id, 'dns.external.domain_id', @dns_external_domain_id),
  (@org_id, 'dns.external.record_ttl', @dns_external_record_ttl),
  (@org_id, 'dns.external.implementation_id', @implementation_id),
  (@org_id, 'dns.internal.domain', @dns_internal_domain),
  (@org_id, 'dns.internal.network_attribute', @dns_internal_network_attr);

-- Setup a default dictionary
insert into dictionary (organization_id, name) values (@org_id, 'default');
SET @dict_id = (SELECT last_insert_id());
insert into dictionary_word (organization_id, dictionary_id, word)
values
  (@org_id, @dict_id, 'rosmarine'),
  (@org_id, @dict_id, 'gonotyl'),
  (@org_id, @dict_id, 'unsimmered'),
  (@org_id, @dict_id, 'skeletonless'),
  (@org_id, @dict_id, 'bradmaker'),
  (@org_id, @dict_id, 'ludicrosplenetic'),
  (@org_id, @dict_id, 'stipate'),
  (@org_id, @dict_id, 'cresylene'),
  (@org_id, @dict_id, 'zappier'),
  (@org_id, @dict_id, 'mastic'),
  (@org_id, @dict_id, 'filaricidal'),
  (@org_id, @dict_id, 'outluster'),
  (@org_id, @dict_id, 'governessy'),
  (@org_id, @dict_id, 'skiddingly'),
  (@org_id, @dict_id, 'subparty'),
  (@org_id, @dict_id, 'cestraction'),
  (@org_id, @dict_id, 'phagedaenous'),
  (@org_id, @dict_id, 'puddee'),
  (@org_id, @dict_id, 'spritzes'),
  (@org_id, @dict_id, 'lindly'),
  (@org_id, @dict_id, 'counterruin'),
  (@org_id, @dict_id, 'spinages'),
  (@org_id, @dict_id, 'umiacs'),
  (@org_id, @dict_id, 'bubos'),
  (@org_id, @dict_id, 'thanatist'),
  (@org_id, @dict_id, 'echoized'),
  (@org_id, @dict_id, 'terrain'),
  (@org_id, @dict_id, 'pollinodium'),
  (@org_id, @dict_id, 'sarigue'),
  (@org_id, @dict_id, 'enravishes'),
  (@org_id, @dict_id, 'jibbs'),
  (@org_id, @dict_id, 'countersued'),
  (@org_id, @dict_id, 'categorem'),
  (@org_id, @dict_id, 'kaoline'),
  (@org_id, @dict_id, 'mappah'),
  (@org_id, @dict_id, 'antidemocrat'),
  (@org_id, @dict_id, 'matina'),
  (@org_id, @dict_id, 'dustman'),
  (@org_id, @dict_id, 'redisputing'),
  (@org_id, @dict_id, 'northamptonshire'),
  (@org_id, @dict_id, 'arachnoiditis'),
  (@org_id, @dict_id, 'quadrateness'),
  (@org_id, @dict_id, 'uppop'),
  (@org_id, @dict_id, 'revenging'),
  (@org_id, @dict_id, 'whimsicalities'),
  (@org_id, @dict_id, 'odin'),
  (@org_id, @dict_id, 'trichonotid'),
  (@org_id, @dict_id, 'aladdin'),
  (@org_id, @dict_id, 'kip'),
  (@org_id, @dict_id, 'copybooks'),
  (@org_id, @dict_id, 'fountains'),
  (@org_id, @dict_id, 'cypro'),
  (@org_id, @dict_id, 'preteritness'),
  (@org_id, @dict_id, 'salema'),
  (@org_id, @dict_id, 'uniovular'),
  (@org_id, @dict_id, 'unwriteable'),
  (@org_id, @dict_id, 'salvably'),
  (@org_id, @dict_id, 'chusite'),
  (@org_id, @dict_id, 'quatercentenary'),
  (@org_id, @dict_id, 'racemes'),
  (@org_id, @dict_id, 'antiganting'),
  (@org_id, @dict_id, 'bichloride'),
  (@org_id, @dict_id, 'cynotherapy'),
  (@org_id, @dict_id, 'uromyces'),
  (@org_id, @dict_id, 'muscalonge'),
  (@org_id, @dict_id, 'blaeu'),
  (@org_id, @dict_id, 'aind'),
  (@org_id, @dict_id, 'muse'),
  (@org_id, @dict_id, 'mechlin'),
  (@org_id, @dict_id, 'pinot'),
  (@org_id, @dict_id, 'decocainize'),
  (@org_id, @dict_id, 'aortoclasia'),
  (@org_id, @dict_id, 'reject'),
  (@org_id, @dict_id, 'bumelia'),
  (@org_id, @dict_id, 'whatreck'),
  (@org_id, @dict_id, 'proseminar'),
  (@org_id, @dict_id, 'leviers'),
  (@org_id, @dict_id, 'sposhy'),
  (@org_id, @dict_id, 'admixes'),
  (@org_id, @dict_id, 'dependency'),
  (@org_id, @dict_id, 'biatomic'),
  (@org_id, @dict_id, 'lexicographically'),
  (@org_id, @dict_id, 'tete'),
  (@org_id, @dict_id, 'granbury'),
  (@org_id, @dict_id, 'laryngoscopies'),
  (@org_id, @dict_id, 'concordances'),
  (@org_id, @dict_id, 'septembrize'),
  (@org_id, @dict_id, 'chrysotis'),
  (@org_id, @dict_id, 'krissy'),
  (@org_id, @dict_id, 'qualmy'),
  (@org_id, @dict_id, 'overdarken'),
  (@org_id, @dict_id, 'undoers'),
  (@org_id, @dict_id, 'zephiran'),
  (@org_id, @dict_id, 'rhus'),
  (@org_id, @dict_id, 'subtractive'),
  (@org_id, @dict_id, 'narica'),
  (@org_id, @dict_id, 'philanthropising'),
  (@org_id, @dict_id, 'mallein'),
  (@org_id, @dict_id, 'transpersonally'),
  (@org_id, @dict_id, 'admonished');

