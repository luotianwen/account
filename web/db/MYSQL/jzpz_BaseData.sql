
delete from HiMenu where ID = 200000;
--
insert into HiMenu(ID, version, menuName, displayRef, description, parentMenu, sequence, creator) values(200000, 0, 'jzpz', '记帐凭证', '记帐凭证', 0, 9999, 0);
--



delete from MenuLink where ID = 200600;
--
insert into MenuLink(ID, version, linkUrl, displayRef, description, authority, sequence, menu, menuLinkType, creator) values(200600, 0, '/pzzhList.action', '凭证字号', '凭证字号', 200600, 9999, 200000, 0, 0);
--



delete from HI_Authority where ID = 200600;
--
delete from HI_Authority where ID = 200601;
--
delete from HI_Authority where ID = 200602;
--
delete from HI_Authority where ID = 200603;
--
delete from HI_Authority where ID = 200604;
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(200600, 0, 'PZZH_LIST', 'jzpz.PzzhList', '', '凭证字号查询', 1, 200600);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(200601, 0, 'PZZH_VIEW', 'jzpz.PzzhView', '', '凭证字号查看', 2, 200600);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(200602, 0, 'PZZH_SAVE', 'jzpz.PzzhSave', '', '凭证字号保存', 3, 200600);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(200603, 0, 'PZZH_DEL', 'jzpz.PzzhDel', '', '凭证字号删除', 4, 200600);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(200604, 0, 'PZZH_LOOKUP', 'jzpz.PzzhLookup', '', '凭证字号带回', 1, 200600);
--

delete from HI_PrivilegeResource where ID = 200600;
--
delete from HI_PrivilegeResource where ID = 200601;
--
delete from HI_PrivilegeResource where ID = 200602;
--
delete from HI_PrivilegeResource where ID = 200603;
--
delete from HI_PrivilegeResource where ID = 200604;
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer, bizExtAuthNames) values(200600, 0, 'PZZH_LIST', '/pzzhList.action', 'com.huolong.jzpz.service.PzzhManager.getSecurityPzzhList', 'PZZH_LOOKUP');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(200601, 0, 'PZZH_VIEW', '/pzzhView.action', 'com.huolong.jzpz.service.PzzhManager.getSecurityPzzhById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(200602, 0, 'PZZH_SAVE', '/pzzhSave.action', 'com.huolong.jzpz.service.PzzhManager.saveSecurityPzzh');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(200603, 0, 'PZZH_DEL', '/pzzhRemove.action', 'com.huolong.jzpz.service.PzzhManager.removeSecurityPzzhById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer) values(200604, 0, 'PZZH_LOOKUP', '/pzzhLookup.action');
--







--
delete from HI_Language where ID = 200600;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(200600, 0, '凭证字号', 1, 0);
--
delete from HI_Language where ID = 200601;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(200601, 0, '序号', 'Pzzh', 1, 0);
--
delete from HI_Language where ID = 200602;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(200602, 0, '凭证种类', 'Pzzh', 1, 0);
--
delete from HI_Language where ID = 200603;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(200603, 0, '会计期间', 'Pzzh', 1, 0);
--
delete from HI_Language where ID = 200604;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(200604, 0, 'column_5', 'Pzzh', 1, 0);
