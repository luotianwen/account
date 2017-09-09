
delete from HiMenu where ID = 100000;
--
insert into HiMenu(ID, version, menuName, displayRef, description, parentMenu, sequence, creator) values(100000, 0, 'account', '系统设置', '系统设置', 0, 9999, 0);
--



delete from MenuLink where ID = 101200;
--
insert into MenuLink(ID, version, linkUrl, displayRef, description, authority, sequence, menu, menuLinkType, creator) values(101200, 0, '/kjkmList.action', '科目设置', '科目设置', 101200, 9999, 100000, 0, 0);
--
delete from MenuLink where ID = 101600;
--
insert into MenuLink(ID, version, linkUrl, displayRef, description, authority, sequence, menu, menuLinkType, creator) values(101600, 0, '/oldkmyebList.action', '上传科目余额表', '上传科目余额表', 101600, 9999, 100000, 0, 0);
--



delete from HI_Authority where ID = 101200;
--
delete from HI_Authority where ID = 101201;
--
delete from HI_Authority where ID = 101202;
--
delete from HI_Authority where ID = 101203;
--
delete from HI_Authority where ID = 101204;
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(101200, 0, 'KJKM_LIST', 'account.KjkmList', '', '科目设置查询', 1, 101200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(101201, 0, 'KJKM_VIEW', 'account.KjkmView', '', '科目设置查看', 2, 101200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(101202, 0, 'KJKM_SAVE', 'account.KjkmSave', '', '科目设置保存', 3, 101200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(101203, 0, 'KJKM_DEL', 'account.KjkmDel', '', '科目设置删除', 4, 101200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(101204, 0, 'KJKM_LOOKUP', 'account.KjkmLookup', '', '科目设置带回', 1, 101200);
--
delete from HI_Authority where ID = 101600;
--
delete from HI_Authority where ID = 101601;
--
delete from HI_Authority where ID = 101602;
--
delete from HI_Authority where ID = 101603;
--
delete from HI_Authority where ID = 101604;
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(101600, 0, 'OLDKMYEB_LIST', 'account.OldkmyebList', '', '上传科目余额表查询', 1, 101600);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(101601, 0, 'OLDKMYEB_VIEW', 'account.OldkmyebView', '', '上传科目余额表查看', 2, 101600);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(101602, 0, 'OLDKMYEB_SAVE', 'account.OldkmyebSave', '', '上传科目余额表保存', 3, 101600);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(101603, 0, 'OLDKMYEB_DEL', 'account.OldkmyebDel', '', '上传科目余额表删除', 4, 101600);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(101604, 0, 'OLDKMYEB_LOOKUP', 'account.OldkmyebLookup', '', '上传科目余额表带回', 1, 101600);
--

delete from HI_PrivilegeResource where ID = 101200;
--
delete from HI_PrivilegeResource where ID = 101201;
--
delete from HI_PrivilegeResource where ID = 101202;
--
delete from HI_PrivilegeResource where ID = 101203;
--
delete from HI_PrivilegeResource where ID = 101204;
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer, bizExtAuthNames) values(101200, 0, 'KJKM_LIST', '/kjkmList.action', 'com.huolong.xtsz.service.KjkmManager.getSecurityKjkmList', 'KJKM_LOOKUP');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(101201, 0, 'KJKM_VIEW', '/kjkmView.action', 'com.huolong.xtsz.service.KjkmManager.getSecurityKjkmById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(101202, 0, 'KJKM_SAVE', '/kjkmSave.action', 'com.huolong.xtsz.service.KjkmManager.saveSecurityKjkm');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(101203, 0, 'KJKM_DEL', '/kjkmRemove.action', 'com.huolong.xtsz.service.KjkmManager.removeSecurityKjkmById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer) values(101204, 0, 'KJKM_LOOKUP', '/kjkmLookup.action');
--
delete from HI_PrivilegeResource where ID = 101600;
--
delete from HI_PrivilegeResource where ID = 101601;
--
delete from HI_PrivilegeResource where ID = 101602;
--
delete from HI_PrivilegeResource where ID = 101603;
--
delete from HI_PrivilegeResource where ID = 101604;
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer, bizExtAuthNames) values(101600, 0, 'OLDKMYEB_LIST', '/oldkmyebList.action', 'com.huolong.xtsz.service.OldkmyebManager.getSecurityOldkmyebList', 'OLDKMYEB_LOOKUP');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(101601, 0, 'OLDKMYEB_VIEW', '/oldkmyebView.action', 'com.huolong.xtsz.service.OldkmyebManager.getSecurityOldkmyebById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(101602, 0, 'OLDKMYEB_SAVE', '/oldkmyebSave.action', 'com.huolong.xtsz.service.OldkmyebManager.saveSecurityOldkmyeb');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(101603, 0, 'OLDKMYEB_DEL', '/oldkmyebRemove.action', 'com.huolong.xtsz.service.OldkmyebManager.removeSecurityOldkmyebById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer) values(101604, 0, 'OLDKMYEB_LOOKUP', '/oldkmyebLookup.action');
--



delete from Enumeration where ID = 100200;
--
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(100200, 0, 'zzslx', '增值税类型', '增值税类型', 0, 0);
--
delete from Enumeration where ID = 100300;
--
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(100300, 0, 'gslz', '公司类型', '公司类型', 0, 0);
--
delete from Enumeration where ID = 100600;
--
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(100600, 0, 'zhxz', '账户性质', '账户性质', 0, 0);
--
delete from Enumeration where ID = 101100;
--
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(101100, 0, 'khxz', '客户性质', '客户性质', 0, 0);
--
delete from Enumeration where ID = 101400;
--
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(101400, 0, 'kmfx', '科目方向', '科目方向', 0, 0);
--
delete from Enumeration where ID = 101500;
--
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(101500, 0, 'kmlx', '科目类型', '科目类型', 0, 0);
--



delete from EnumerationValue where ID = 100200;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(100200, 0, 'ybnsr', '一般纳税人', '一般纳税人', '', 100200, 0);
--
delete from EnumerationValue where ID = 100201;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(100201, 0, 'xgmnsr', '小规模纳税人', '小规模纳税人', '', 100200, 0);
--
delete from EnumerationValue where ID = 100202;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(100202, 0, 'hdzsh', '核定增收户', '核定增收户', '', 100200, 0);
--
delete from EnumerationValue where ID = 100203;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(100203, 0, 'fzzsnsr', '非增值税纳税人', '非增值税纳税人', '', 100200, 0);
--
delete from EnumerationValue where ID = 100300;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(100300, 0, 'gyqy', '国有企业', '国有企业', '', 100300, 0);
--
delete from EnumerationValue where ID = 100600;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(100600, 0, 'jbh', '基本户', '基本户', '', 100600, 0);
--
delete from EnumerationValue where ID = 100601;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(100601, 0, 'ybh', '一般户', '一般户', '', 100600, 0);
--
delete from EnumerationValue where ID = 100602;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(100602, 0, 'qth', '其他户', '其他户', '', 100600, 0);
--
delete from EnumerationValue where ID = 101100;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(101100, 0, 'kh', '客户', '客户', '', 101100, 0);
--
delete from EnumerationValue where ID = 101400;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(101400, 0, 'jf', '借方', '借方', '1', 101400, 0);
--
delete from EnumerationValue where ID = 101401;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(101401, 0, 'df', '贷方', '贷方', '2', 101400, 0);
--
delete from EnumerationValue where ID = 101500;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(101500, 0, 'zcl', '资产类', '资产类', '', 101500, 0);
--
delete from EnumerationValue where ID = 101501;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(101501, 0, 'fzl', '负债类', '负债类', '', 101500, 0);
--
delete from EnumerationValue where ID = 101502;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(101502, 0, 'gtl', '共同类', '共同类', '', 101500, 0);
--
delete from EnumerationValue where ID = 101503;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(101503, 0, 'yl', '权益类', '权益类', '', 101500, 0);
--
delete from EnumerationValue where ID = 101504;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(101504, 0, 'cbl', '成本类', '成本类', '', 101500, 0);
--
delete from EnumerationValue where ID = 101505;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(101505, 0, 'syl', '损益类', '损益类', '', 101500, 0);
--

--
delete from HI_Language where ID = 100200;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(100200, 0, '增值税类型', 1, 0);
--
delete from HI_Language where ID = 100201;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(100201, 0, '一般纳税人', 'zzslx', 1, 0);
--
delete from HI_Language where ID = 100202;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(100202, 0, '小规模纳税人', 'zzslx', 1, 0);
--
delete from HI_Language where ID = 100203;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(100203, 0, '核定增收户', 'zzslx', 1, 0);
--
delete from HI_Language where ID = 100204;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(100204, 0, '非增值税纳税人', 'zzslx', 1, 0);
--
delete from HI_Language where ID = 100300;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(100300, 0, '公司类型', 1, 0);
--
delete from HI_Language where ID = 100301;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(100301, 0, '国有企业', 'gslz', 1, 0);
--
delete from HI_Language where ID = 100600;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(100600, 0, '账户性质', 1, 0);
--
delete from HI_Language where ID = 100601;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(100601, 0, '基本户', 'zhxz', 1, 0);
--
delete from HI_Language where ID = 100602;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(100602, 0, '一般户', 'zhxz', 1, 0);
--
delete from HI_Language where ID = 100603;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(100603, 0, '其他户', 'zhxz', 1, 0);
--
delete from HI_Language where ID = 101100;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(101100, 0, '客户性质', 1, 0);
--
delete from HI_Language where ID = 101101;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101101, 0, '客户', 'khxz', 1, 0);
--
delete from HI_Language where ID = 101200;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(101200, 0, '科目设置', 1, 0);
--
delete from HI_Language where ID = 101201;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101201, 0, '科目编号', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101202;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101202, 0, '科目名称', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101203;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101203, 0, '科目方向', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101204;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101204, 0, '科目级次', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101205;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101205, 0, '科目类型', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101206;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101206, 0, '科目位置', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101207;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101207, 0, '科目明细', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101208;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101208, 0, '上级科目', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101209;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101209, 0, '外币核算', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101210;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101210, 0, '数量金额式核算', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101211;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101211, 0, '标识', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101212;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101212, 0, '辅助核算', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101213;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101213, 0, '部门名称', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101400;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(101400, 0, '科目方向', 1, 0);
--
delete from HI_Language where ID = 101401;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101401, 0, '借方', 'kmfx', 1, 0);
--
delete from HI_Language where ID = 101402;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101402, 0, '贷方', 'kmfx', 1, 0);
--
delete from HI_Language where ID = 101500;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(101500, 0, '科目类型', 1, 0);
--
delete from HI_Language where ID = 101501;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101501, 0, '资产类', 'kmlx', 1, 0);
--
delete from HI_Language where ID = 101502;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101502, 0, '负债类', 'kmlx', 1, 0);
--
delete from HI_Language where ID = 101503;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101503, 0, '共同类', 'kmlx', 1, 0);
--
delete from HI_Language where ID = 101504;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101504, 0, '权益类', 'kmlx', 1, 0);
--
delete from HI_Language where ID = 101505;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101505, 0, '成本类', 'kmlx', 1, 0);
--
delete from HI_Language where ID = 101506;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101506, 0, '损益类', 'kmlx', 1, 0);
--
delete from HI_Language where ID = 101600;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(101600, 0, '上传科目余额表', 1, 0);
--
delete from HI_Language where ID = 101601;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101601, 0, '附件', 'Oldkmyeb', 1, 0);
--
delete from HI_Language where ID = 101602;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101602, 0, '部门名称', 'Oldkmyeb', 1, 0);
