
delete from HiMenu where ID = 400000;
--
insert into HiMenu(ID, version, menuName, displayRef, description, parentMenu, sequence, creator) values(400000, 0, 'fzhs', '辅助核算', '辅助核算', 0, 9999, 0);
--



delete from MenuLink where ID = 401200;
--
insert into MenuLink(ID, version, linkUrl, displayRef, description, authority, sequence, menu, menuLinkType, creator) values(401200, 0, '/fzhsList.action', '辅助核算', '辅助核算', 401200, 9999, 400000, 0, 0);
--



delete from HI_Authority where ID = 401200;
--
delete from HI_Authority where ID = 401201;
--
delete from HI_Authority where ID = 401202;
--
delete from HI_Authority where ID = 401203;
--
delete from HI_Authority where ID = 401204;
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(401200, 0, 'FZHS_LIST', 'fzhs.FzhsList', '', '辅助核算查询', 1, 401200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(401201, 0, 'FZHS_VIEW', 'fzhs.FzhsView', '', '辅助核算查看', 2, 401200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(401202, 0, 'FZHS_SAVE', 'fzhs.FzhsSave', '', '辅助核算保存', 3, 401200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(401203, 0, 'FZHS_DEL', 'fzhs.FzhsDel', '', '辅助核算删除', 4, 401200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(401204, 0, 'FZHS_LOOKUP', 'fzhs.FzhsLookup', '', '辅助核算带回', 1, 401200);
--

delete from HI_PrivilegeResource where ID = 401200;
--
delete from HI_PrivilegeResource where ID = 401201;
--
delete from HI_PrivilegeResource where ID = 401202;
--
delete from HI_PrivilegeResource where ID = 401203;
--
delete from HI_PrivilegeResource where ID = 401204;
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer, bizExtAuthNames) values(401200, 0, 'FZHS_LIST', '/fzhsList.action', 'com.huolong.fzhs.service.FzhsManager.getSecurityFzhsList', 'FZHS_LOOKUP');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(401201, 0, 'FZHS_VIEW', '/fzhsView.action', 'com.huolong.fzhs.service.FzhsManager.getSecurityFzhsById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(401202, 0, 'FZHS_SAVE', '/fzhsSave.action', 'com.huolong.fzhs.service.FzhsManager.saveSecurityFzhs');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(401203, 0, 'FZHS_DEL', '/fzhsRemove.action', 'com.huolong.fzhs.service.FzhsManager.removeSecurityFzhsById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer) values(401204, 0, 'FZHS_LOOKUP', '/fzhsLookup.action');
--



delete from Enumeration where ID = 400800;
--
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(400800, 0, 'wlhsxz', '性质', '性质', 0, 0);
--
delete from Enumeration where ID = 400900;
--
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(400900, 0, 'chxz', '存货性质', '存货性质', 0, 0);
--
delete from Enumeration where ID = 401300;
--
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(401300, 0, 'fzhslx', '辅助核算类型', '辅助核算类型', 0, 0);
--



delete from EnumerationValue where ID = 400800;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(400800, 0, 'wbdw', '外部单位', '外部单位', '', 400800, 0);
--
delete from EnumerationValue where ID = 400801;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(400801, 0, 'wbgr', '外部个人', '外部个人', '', 400800, 0);
--
delete from EnumerationValue where ID = 400802;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(400802, 0, 'nbyg', '内部员工', '内部员工', '', 400800, 0);
--
delete from EnumerationValue where ID = 400900;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(400900, 0, 'clcg', '材料采购', '材料采购', '', 400900, 0);
--
delete from EnumerationValue where ID = 401300;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(401300, 0, 'orgs', '部门', '部门', 'orgs', 401300, 0);
--
delete from EnumerationValue where ID = 401301;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(401301, 0, 'kh', '客户', '客户', 'kh', 401300, 0);
--
delete from EnumerationValue where ID = 401302;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(401302, 0, 'gys', '供应商', '供应商', 'gys', 401300, 0);
--
delete from EnumerationValue where ID = 401303;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(401303, 0, 'ch', '存货', '存货', 'ch', 401300, 0);
--
delete from EnumerationValue where ID = 401304;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(401304, 0, 'ry', '人员', '人员', 'ry', 401300, 0);
--
delete from EnumerationValue where ID = 401305;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(401305, 0, 'xm', '项目', '项目', 'xm', 401300, 0);
--
delete from EnumerationValue where ID = 401306;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(401306, 0, 'wldw', '往来单位', '往来单位', 'wldw', 401300, 0);
--

--
delete from HI_Language where ID = 400800;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(400800, 0, '性质', 1, 0);
--
delete from HI_Language where ID = 400801;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(400801, 0, '外部单位', 'wlhsxz', 1, 0);
--
delete from HI_Language where ID = 400802;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(400802, 0, '外部个人', 'wlhsxz', 1, 0);
--
delete from HI_Language where ID = 400803;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(400803, 0, '内部员工', 'wlhsxz', 1, 0);
--
delete from HI_Language where ID = 400900;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(400900, 0, '存货性质', 1, 0);
--
delete from HI_Language where ID = 400901;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(400901, 0, '材料采购', 'chxz', 1, 0);
--
delete from HI_Language where ID = 401200;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(401200, 0, '辅助核算', 1, 0);
--
delete from HI_Language where ID = 401201;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401201, 0, '编码', 'Fzhs', 1, 0);
--
delete from HI_Language where ID = 401202;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401202, 0, '名称', 'Fzhs', 1, 0);
--
delete from HI_Language where ID = 401203;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401203, 0, '联系人', 'Fzhs', 1, 0);
--
delete from HI_Language where ID = 401204;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401204, 0, '规格型号', 'Fzhs', 1, 0);
--
delete from HI_Language where ID = 401205;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401205, 0, '计量单位', 'Fzhs', 1, 0);
--
delete from HI_Language where ID = 401206;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401206, 0, '辅助核算类型', 'Fzhs', 1, 0);
--
delete from HI_Language where ID = 401207;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401207, 0, '名称', 'Fzhs', 1, 0);
--
delete from HI_Language where ID = 401208;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401208, 0, '编码', 'Fzhs', 1, 0);
--
delete from HI_Language where ID = 401209;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401209, 0, '部门编号', 'Fzhs', 1, 0);
--
delete from HI_Language where ID = 401210;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401210, 0, '部门名称', 'Fzhs', 1, 0);
--
delete from HI_Language where ID = 401300;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(401300, 0, '辅助核算类型', 1, 0);
--
delete from HI_Language where ID = 401301;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401301, 0, '部门', 'fzhslx', 1, 0);
--
delete from HI_Language where ID = 401302;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401302, 0, '客户', 'fzhslx', 1, 0);
--
delete from HI_Language where ID = 401303;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401303, 0, '供应商', 'fzhslx', 1, 0);
--
delete from HI_Language where ID = 401304;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401304, 0, '存货', 'fzhslx', 1, 0);
--
delete from HI_Language where ID = 401305;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401305, 0, '人员', 'fzhslx', 1, 0);
--
delete from HI_Language where ID = 401306;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401306, 0, '项目', 'fzhslx', 1, 0);
--
delete from HI_Language where ID = 401307;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401307, 0, '往来单位', 'fzhslx', 1, 0);
