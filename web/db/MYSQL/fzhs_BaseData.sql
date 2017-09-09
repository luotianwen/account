
delete from HiMenu where ID = 400000;
--
insert into HiMenu(ID, version, menuName, displayRef, description, parentMenu, sequence, creator) values(400000, 0, 'fzhs', '��������', '��������', 0, 9999, 0);
--



delete from MenuLink where ID = 401200;
--
insert into MenuLink(ID, version, linkUrl, displayRef, description, authority, sequence, menu, menuLinkType, creator) values(401200, 0, '/fzhsList.action', '��������', '��������', 401200, 9999, 400000, 0, 0);
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
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(401200, 0, 'FZHS_LIST', 'fzhs.FzhsList', '', '���������ѯ', 1, 401200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(401201, 0, 'FZHS_VIEW', 'fzhs.FzhsView', '', '��������鿴', 2, 401200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(401202, 0, 'FZHS_SAVE', 'fzhs.FzhsSave', '', '�������㱣��', 3, 401200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(401203, 0, 'FZHS_DEL', 'fzhs.FzhsDel', '', '��������ɾ��', 4, 401200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(401204, 0, 'FZHS_LOOKUP', 'fzhs.FzhsLookup', '', '�����������', 1, 401200);
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
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(400800, 0, 'wlhsxz', '����', '����', 0, 0);
--
delete from Enumeration where ID = 400900;
--
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(400900, 0, 'chxz', '�������', '�������', 0, 0);
--
delete from Enumeration where ID = 401300;
--
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(401300, 0, 'fzhslx', '������������', '������������', 0, 0);
--



delete from EnumerationValue where ID = 400800;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(400800, 0, 'wbdw', '�ⲿ��λ', '�ⲿ��λ', '', 400800, 0);
--
delete from EnumerationValue where ID = 400801;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(400801, 0, 'wbgr', '�ⲿ����', '�ⲿ����', '', 400800, 0);
--
delete from EnumerationValue where ID = 400802;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(400802, 0, 'nbyg', '�ڲ�Ա��', '�ڲ�Ա��', '', 400800, 0);
--
delete from EnumerationValue where ID = 400900;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(400900, 0, 'clcg', '���ϲɹ�', '���ϲɹ�', '', 400900, 0);
--
delete from EnumerationValue where ID = 401300;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(401300, 0, 'orgs', '����', '����', 'orgs', 401300, 0);
--
delete from EnumerationValue where ID = 401301;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(401301, 0, 'kh', '�ͻ�', '�ͻ�', 'kh', 401300, 0);
--
delete from EnumerationValue where ID = 401302;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(401302, 0, 'gys', '��Ӧ��', '��Ӧ��', 'gys', 401300, 0);
--
delete from EnumerationValue where ID = 401303;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(401303, 0, 'ch', '���', '���', 'ch', 401300, 0);
--
delete from EnumerationValue where ID = 401304;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(401304, 0, 'ry', '��Ա', '��Ա', 'ry', 401300, 0);
--
delete from EnumerationValue where ID = 401305;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(401305, 0, 'xm', '��Ŀ', '��Ŀ', 'xm', 401300, 0);
--
delete from EnumerationValue where ID = 401306;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(401306, 0, 'wldw', '������λ', '������λ', 'wldw', 401300, 0);
--

--
delete from HI_Language where ID = 400800;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(400800, 0, '����', 1, 0);
--
delete from HI_Language where ID = 400801;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(400801, 0, '�ⲿ��λ', 'wlhsxz', 1, 0);
--
delete from HI_Language where ID = 400802;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(400802, 0, '�ⲿ����', 'wlhsxz', 1, 0);
--
delete from HI_Language where ID = 400803;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(400803, 0, '�ڲ�Ա��', 'wlhsxz', 1, 0);
--
delete from HI_Language where ID = 400900;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(400900, 0, '�������', 1, 0);
--
delete from HI_Language where ID = 400901;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(400901, 0, '���ϲɹ�', 'chxz', 1, 0);
--
delete from HI_Language where ID = 401200;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(401200, 0, '��������', 1, 0);
--
delete from HI_Language where ID = 401201;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401201, 0, '����', 'Fzhs', 1, 0);
--
delete from HI_Language where ID = 401202;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401202, 0, '����', 'Fzhs', 1, 0);
--
delete from HI_Language where ID = 401203;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401203, 0, '��ϵ��', 'Fzhs', 1, 0);
--
delete from HI_Language where ID = 401204;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401204, 0, '����ͺ�', 'Fzhs', 1, 0);
--
delete from HI_Language where ID = 401205;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401205, 0, '������λ', 'Fzhs', 1, 0);
--
delete from HI_Language where ID = 401206;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401206, 0, '������������', 'Fzhs', 1, 0);
--
delete from HI_Language where ID = 401207;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401207, 0, '����', 'Fzhs', 1, 0);
--
delete from HI_Language where ID = 401208;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401208, 0, '����', 'Fzhs', 1, 0);
--
delete from HI_Language where ID = 401209;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401209, 0, '���ű��', 'Fzhs', 1, 0);
--
delete from HI_Language where ID = 401210;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401210, 0, '��������', 'Fzhs', 1, 0);
--
delete from HI_Language where ID = 401300;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(401300, 0, '������������', 1, 0);
--
delete from HI_Language where ID = 401301;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401301, 0, '����', 'fzhslx', 1, 0);
--
delete from HI_Language where ID = 401302;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401302, 0, '�ͻ�', 'fzhslx', 1, 0);
--
delete from HI_Language where ID = 401303;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401303, 0, '��Ӧ��', 'fzhslx', 1, 0);
--
delete from HI_Language where ID = 401304;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401304, 0, '���', 'fzhslx', 1, 0);
--
delete from HI_Language where ID = 401305;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401305, 0, '��Ա', 'fzhslx', 1, 0);
--
delete from HI_Language where ID = 401306;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401306, 0, '��Ŀ', 'fzhslx', 1, 0);
--
delete from HI_Language where ID = 401307;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(401307, 0, '������λ', 'fzhslx', 1, 0);
