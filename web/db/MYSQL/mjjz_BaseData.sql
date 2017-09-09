
delete from HiMenu where ID = 600000;
--
insert into HiMenu(ID, version, menuName, displayRef, description, parentMenu, sequence, creator) values(600000, 0, 'mjjz', '敏捷记账', '敏捷记账', 0, 9999, 0);
--



delete from MenuLink where ID = 600100;
--
insert into MenuLink(ID, version, linkUrl, displayRef, description, authority, sequence, menu, menuLinkType, creator) values(600100, 0, '/yhdzdList.action', '银行对账单', '银行对账单', 600100, 9999, 600000, 0, 0);
--
delete from MenuLink where ID = 600500;
--
insert into MenuLink(ID, version, linkUrl, displayRef, description, authority, sequence, menu, menuLinkType, creator) values(600500, 0, '/sfkList.action', '收付款', '收付款', 600500, 9999, 600000, 0, 0);
--



delete from HI_Authority where ID = 600100;
--
delete from HI_Authority where ID = 600101;
--
delete from HI_Authority where ID = 600102;
--
delete from HI_Authority where ID = 600103;
--
delete from HI_Authority where ID = 600104;
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600100, 0, 'YHDZD_LIST', 'mjjz.YhdzdList', '', '银行对账单查询', 1, 600100);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600101, 0, 'YHDZD_VIEW', 'mjjz.YhdzdView', '', '银行对账单查看', 2, 600100);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600102, 0, 'YHDZD_SAVE', 'mjjz.YhdzdSave', '', '银行对账单保存', 3, 600100);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600103, 0, 'YHDZD_DEL', 'mjjz.YhdzdDel', '', '银行对账单删除', 4, 600100);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600104, 0, 'YHDZD_LOOKUP', 'mjjz.YhdzdLookup', '', '银行对账单带回', 1, 600100);
--
delete from HI_Authority where ID = 600300;
--
delete from HI_Authority where ID = 600301;
--
delete from HI_Authority where ID = 600302;
--
delete from HI_Authority where ID = 600303;
--
delete from HI_Authority where ID = 600304;
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600300, 0, 'YHDZDMX_LIST', 'mjjz.YhdzdMXList', '', '银行对账单明细查询', 1, 600300);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600301, 0, 'YHDZDMX_VIEW', 'mjjz.YhdzdMXView', '', '银行对账单明细查看', 2, 600300);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600302, 0, 'YHDZDMX_SAVE', 'mjjz.YhdzdMXSave', '', '银行对账单明细保存', 3, 600300);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600303, 0, 'YHDZDMX_DEL', 'mjjz.YhdzdMXDel', '', '银行对账单明细删除', 4, 600300);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600304, 0, 'YHDZDMX_LOOKUP', 'mjjz.YhdzdMXLookup', '', '银行对账单明细带回', 1, 600300);
--
delete from HI_Authority where ID = 600500;
--
delete from HI_Authority where ID = 600501;
--
delete from HI_Authority where ID = 600502;
--
delete from HI_Authority where ID = 600503;
--
delete from HI_Authority where ID = 600504;
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600500, 0, 'SFK_LIST', 'mjjz.SfkList', '', '收付款查询', 1, 600500);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600501, 0, 'SFK_VIEW', 'mjjz.SfkView', '', '收付款查看', 2, 600500);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600502, 0, 'SFK_SAVE', 'mjjz.SfkSave', '', '收付款保存', 3, 600500);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600503, 0, 'SFK_DEL', 'mjjz.SfkDel', '', '收付款删除', 4, 600500);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600504, 0, 'SFK_LOOKUP', 'mjjz.SfkLookup', '', '收付款带回', 1, 600500);
--

delete from HI_PrivilegeResource where ID = 600100;
--
delete from HI_PrivilegeResource where ID = 600101;
--
delete from HI_PrivilegeResource where ID = 600102;
--
delete from HI_PrivilegeResource where ID = 600103;
--
delete from HI_PrivilegeResource where ID = 600104;
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer, bizExtAuthNames) values(600100, 0, 'YHDZD_LIST', '/yhdzdList.action', 'com.huolong.mjjz.service.YhdzdManager.getSecurityYhdzdList', 'YHDZD_LOOKUP');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(600101, 0, 'YHDZD_VIEW', '/yhdzdView.action', 'com.huolong.mjjz.service.YhdzdManager.getSecurityYhdzdById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(600102, 0, 'YHDZD_SAVE', '/yhdzdSave.action', 'com.huolong.mjjz.service.YhdzdManager.saveSecurityYhdzd');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(600103, 0, 'YHDZD_DEL', '/yhdzdRemove.action', 'com.huolong.mjjz.service.YhdzdManager.removeSecurityYhdzdById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer) values(600104, 0, 'YHDZD_LOOKUP', '/yhdzdLookup.action');
--
delete from HI_PrivilegeResource where ID = 600300;
--
delete from HI_PrivilegeResource where ID = 600301;
--
delete from HI_PrivilegeResource where ID = 600302;
--
delete from HI_PrivilegeResource where ID = 600303;
--
delete from HI_PrivilegeResource where ID = 600304;
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer, bizExtAuthNames) values(600300, 0, 'YHDZDMX_LIST', '/yhdzdMXList.action', 'com.huolong.mjjz.service.YhdzdMXManager.getSecurityYhdzdMXList', 'YHDZDMX_LOOKUP');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(600301, 0, 'YHDZDMX_VIEW', '/yhdzdMXView.action', 'com.huolong.mjjz.service.YhdzdMXManager.getSecurityYhdzdMXById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(600302, 0, 'YHDZDMX_SAVE', '/yhdzdMXSave.action', 'com.huolong.mjjz.service.YhdzdMXManager.saveSecurityYhdzdMX');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(600303, 0, 'YHDZDMX_DEL', '/yhdzdMXRemove.action', 'com.huolong.mjjz.service.YhdzdMXManager.removeSecurityYhdzdMXById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer) values(600304, 0, 'YHDZDMX_LOOKUP', '/yhdzdMXLookup.action');
--
delete from HI_PrivilegeResource where ID = 600500;
--
delete from HI_PrivilegeResource where ID = 600501;
--
delete from HI_PrivilegeResource where ID = 600502;
--
delete from HI_PrivilegeResource where ID = 600503;
--
delete from HI_PrivilegeResource where ID = 600504;
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer, bizExtAuthNames) values(600500, 0, 'SFK_LIST', '/sfkList.action', 'com.huolong.mjjz.service.SfkManager.getSecuritySfkList', 'SFK_LOOKUP');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(600501, 0, 'SFK_VIEW', '/sfkView.action', 'com.huolong.mjjz.service.SfkManager.getSecuritySfkById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(600502, 0, 'SFK_SAVE', '/sfkSave.action', 'com.huolong.mjjz.service.SfkManager.saveSecuritySfk');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(600503, 0, 'SFK_DEL', '/sfkRemove.action', 'com.huolong.mjjz.service.SfkManager.removeSecuritySfkById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer) values(600504, 0, 'SFK_LOOKUP', '/sfkLookup.action');
--



delete from Enumeration where ID = 600200;
--
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(600200, 0, 'yhdzdzt', '对账单状态', '对账单状态', 0, 0);
--
delete from Enumeration where ID = 600400;
--
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(600400, 0, 'sfzbs', '收付款标识', '收付款标识', 0, 0);
--



delete from EnumerationValue where ID = 600200;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(600200, 0, 'ydr', '已导入', '已导入', '', 600200, 0);
--
delete from EnumerationValue where ID = 600201;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(600201, 0, 'yxg', '已修改', '已修改', '', 600200, 0);
--
delete from EnumerationValue where ID = 600202;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(600202, 0, 'ysc', '已生成', '已生成', '', 600200, 0);
--
delete from EnumerationValue where ID = 600400;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(600400, 0, 'sk', '收款', '收款', '', 600400, 0);
--
delete from EnumerationValue where ID = 600401;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(600401, 0, 'fk', '付款', '付款', '', 600400, 0);
--

--
delete from HI_Language where ID = 600100;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(600100, 0, '银行对账单', 1, 0);
--
delete from HI_Language where ID = 600101;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600101, 0, '日期', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600102;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600102, 0, '摘要', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600103;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600103, 0, '票据号', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600104;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600104, 0, '借方金额', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600105;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600105, 0, '贷方金额', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600106;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600106, 0, '余额', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600107;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600107, 0, '状态', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600108;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600108, 0, '发票张数', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600109;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600109, 0, '银行名称', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600110;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600110, 0, '凭证字号', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600111;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600111, 0, '勾对', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600200;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(600200, 0, '对账单状态', 1, 0);
--
delete from HI_Language where ID = 600201;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600201, 0, '已导入', 'yhdzdzt', 1, 0);
--
delete from HI_Language where ID = 600202;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600202, 0, '已修改', 'yhdzdzt', 1, 0);
--
delete from HI_Language where ID = 600203;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600203, 0, '已生成', 'yhdzdzt', 1, 0);
--
delete from HI_Language where ID = 600300;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(600300, 0, '银行对账单明细', 1, 0);
--
delete from HI_Language where ID = 600301;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600301, 0, '收付款类型', 'YhdzdMX', 1, 0);
--
delete from HI_Language where ID = 600302;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600302, 0, '金额', 'YhdzdMX', 1, 0);
--
delete from HI_Language where ID = 600303;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600303, 0, '发票张数', 'YhdzdMX', 1, 0);
--
delete from HI_Language where ID = 600304;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600304, 0, '对方单位名称', 'YhdzdMX', 1, 0);
--
delete from HI_Language where ID = 600305;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600305, 0, '备注', 'YhdzdMX', 1, 0);
--
delete from HI_Language where ID = 600400;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(600400, 0, '收付款标识', 1, 0);
--
delete from HI_Language where ID = 600401;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600401, 0, '收款', 'sfzbs', 1, 0);
--
delete from HI_Language where ID = 600402;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600402, 0, '付款', 'sfzbs', 1, 0);
--
delete from HI_Language where ID = 600500;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(600500, 0, '收付款', 1, 0);
--
delete from HI_Language where ID = 600501;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600501, 0, '名称', 'Sfk', 1, 0);
--
delete from HI_Language where ID = 600502;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600502, 0, '标识', 'Sfk', 1, 0);
--
delete from HI_Language where ID = 600503;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600503, 0, '科目名称', 'Sfk', 1, 0);
