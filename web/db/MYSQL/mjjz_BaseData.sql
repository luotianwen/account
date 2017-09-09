
delete from HiMenu where ID = 600000;
--
insert into HiMenu(ID, version, menuName, displayRef, description, parentMenu, sequence, creator) values(600000, 0, 'mjjz', '���ݼ���', '���ݼ���', 0, 9999, 0);
--



delete from MenuLink where ID = 600100;
--
insert into MenuLink(ID, version, linkUrl, displayRef, description, authority, sequence, menu, menuLinkType, creator) values(600100, 0, '/yhdzdList.action', '���ж��˵�', '���ж��˵�', 600100, 9999, 600000, 0, 0);
--
delete from MenuLink where ID = 600500;
--
insert into MenuLink(ID, version, linkUrl, displayRef, description, authority, sequence, menu, menuLinkType, creator) values(600500, 0, '/sfkList.action', '�ո���', '�ո���', 600500, 9999, 600000, 0, 0);
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
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600100, 0, 'YHDZD_LIST', 'mjjz.YhdzdList', '', '���ж��˵���ѯ', 1, 600100);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600101, 0, 'YHDZD_VIEW', 'mjjz.YhdzdView', '', '���ж��˵��鿴', 2, 600100);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600102, 0, 'YHDZD_SAVE', 'mjjz.YhdzdSave', '', '���ж��˵�����', 3, 600100);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600103, 0, 'YHDZD_DEL', 'mjjz.YhdzdDel', '', '���ж��˵�ɾ��', 4, 600100);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600104, 0, 'YHDZD_LOOKUP', 'mjjz.YhdzdLookup', '', '���ж��˵�����', 1, 600100);
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
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600300, 0, 'YHDZDMX_LIST', 'mjjz.YhdzdMXList', '', '���ж��˵���ϸ��ѯ', 1, 600300);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600301, 0, 'YHDZDMX_VIEW', 'mjjz.YhdzdMXView', '', '���ж��˵���ϸ�鿴', 2, 600300);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600302, 0, 'YHDZDMX_SAVE', 'mjjz.YhdzdMXSave', '', '���ж��˵���ϸ����', 3, 600300);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600303, 0, 'YHDZDMX_DEL', 'mjjz.YhdzdMXDel', '', '���ж��˵���ϸɾ��', 4, 600300);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600304, 0, 'YHDZDMX_LOOKUP', 'mjjz.YhdzdMXLookup', '', '���ж��˵���ϸ����', 1, 600300);
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
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600500, 0, 'SFK_LIST', 'mjjz.SfkList', '', '�ո����ѯ', 1, 600500);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600501, 0, 'SFK_VIEW', 'mjjz.SfkView', '', '�ո���鿴', 2, 600500);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600502, 0, 'SFK_SAVE', 'mjjz.SfkSave', '', '�ո����', 3, 600500);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600503, 0, 'SFK_DEL', 'mjjz.SfkDel', '', '�ո���ɾ��', 4, 600500);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(600504, 0, 'SFK_LOOKUP', 'mjjz.SfkLookup', '', '�ո������', 1, 600500);
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
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(600200, 0, 'yhdzdzt', '���˵�״̬', '���˵�״̬', 0, 0);
--
delete from Enumeration where ID = 600400;
--
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(600400, 0, 'sfzbs', '�ո����ʶ', '�ո����ʶ', 0, 0);
--



delete from EnumerationValue where ID = 600200;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(600200, 0, 'ydr', '�ѵ���', '�ѵ���', '', 600200, 0);
--
delete from EnumerationValue where ID = 600201;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(600201, 0, 'yxg', '���޸�', '���޸�', '', 600200, 0);
--
delete from EnumerationValue where ID = 600202;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(600202, 0, 'ysc', '������', '������', '', 600200, 0);
--
delete from EnumerationValue where ID = 600400;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(600400, 0, 'sk', '�տ�', '�տ�', '', 600400, 0);
--
delete from EnumerationValue where ID = 600401;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(600401, 0, 'fk', '����', '����', '', 600400, 0);
--

--
delete from HI_Language where ID = 600100;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(600100, 0, '���ж��˵�', 1, 0);
--
delete from HI_Language where ID = 600101;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600101, 0, '����', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600102;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600102, 0, 'ժҪ', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600103;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600103, 0, 'Ʊ�ݺ�', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600104;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600104, 0, '�跽���', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600105;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600105, 0, '�������', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600106;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600106, 0, '���', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600107;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600107, 0, '״̬', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600108;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600108, 0, '��Ʊ����', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600109;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600109, 0, '��������', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600110;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600110, 0, 'ƾ֤�ֺ�', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600111;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600111, 0, '����', 'Yhdzd', 1, 0);
--
delete from HI_Language where ID = 600200;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(600200, 0, '���˵�״̬', 1, 0);
--
delete from HI_Language where ID = 600201;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600201, 0, '�ѵ���', 'yhdzdzt', 1, 0);
--
delete from HI_Language where ID = 600202;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600202, 0, '���޸�', 'yhdzdzt', 1, 0);
--
delete from HI_Language where ID = 600203;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600203, 0, '������', 'yhdzdzt', 1, 0);
--
delete from HI_Language where ID = 600300;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(600300, 0, '���ж��˵���ϸ', 1, 0);
--
delete from HI_Language where ID = 600301;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600301, 0, '�ո�������', 'YhdzdMX', 1, 0);
--
delete from HI_Language where ID = 600302;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600302, 0, '���', 'YhdzdMX', 1, 0);
--
delete from HI_Language where ID = 600303;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600303, 0, '��Ʊ����', 'YhdzdMX', 1, 0);
--
delete from HI_Language where ID = 600304;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600304, 0, '�Է���λ����', 'YhdzdMX', 1, 0);
--
delete from HI_Language where ID = 600305;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600305, 0, '��ע', 'YhdzdMX', 1, 0);
--
delete from HI_Language where ID = 600400;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(600400, 0, '�ո����ʶ', 1, 0);
--
delete from HI_Language where ID = 600401;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600401, 0, '�տ�', 'sfzbs', 1, 0);
--
delete from HI_Language where ID = 600402;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600402, 0, '����', 'sfzbs', 1, 0);
--
delete from HI_Language where ID = 600500;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(600500, 0, '�ո���', 1, 0);
--
delete from HI_Language where ID = 600501;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600501, 0, '����', 'Sfk', 1, 0);
--
delete from HI_Language where ID = 600502;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600502, 0, '��ʶ', 'Sfk', 1, 0);
--
delete from HI_Language where ID = 600503;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(600503, 0, '��Ŀ����', 'Sfk', 1, 0);
