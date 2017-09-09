
delete from HiMenu where ID = 100000;
--
insert into HiMenu(ID, version, menuName, displayRef, description, parentMenu, sequence, creator) values(100000, 0, 'account', 'ϵͳ����', 'ϵͳ����', 0, 9999, 0);
--



delete from MenuLink where ID = 101200;
--
insert into MenuLink(ID, version, linkUrl, displayRef, description, authority, sequence, menu, menuLinkType, creator) values(101200, 0, '/kjkmList.action', '��Ŀ����', '��Ŀ����', 101200, 9999, 100000, 0, 0);
--
delete from MenuLink where ID = 101600;
--
insert into MenuLink(ID, version, linkUrl, displayRef, description, authority, sequence, menu, menuLinkType, creator) values(101600, 0, '/oldkmyebList.action', '�ϴ���Ŀ����', '�ϴ���Ŀ����', 101600, 9999, 100000, 0, 0);
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
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(101200, 0, 'KJKM_LIST', 'account.KjkmList', '', '��Ŀ���ò�ѯ', 1, 101200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(101201, 0, 'KJKM_VIEW', 'account.KjkmView', '', '��Ŀ���ò鿴', 2, 101200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(101202, 0, 'KJKM_SAVE', 'account.KjkmSave', '', '��Ŀ���ñ���', 3, 101200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(101203, 0, 'KJKM_DEL', 'account.KjkmDel', '', '��Ŀ����ɾ��', 4, 101200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(101204, 0, 'KJKM_LOOKUP', 'account.KjkmLookup', '', '��Ŀ���ô���', 1, 101200);
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
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(101600, 0, 'OLDKMYEB_LIST', 'account.OldkmyebList', '', '�ϴ���Ŀ�����ѯ', 1, 101600);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(101601, 0, 'OLDKMYEB_VIEW', 'account.OldkmyebView', '', '�ϴ���Ŀ����鿴', 2, 101600);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(101602, 0, 'OLDKMYEB_SAVE', 'account.OldkmyebSave', '', '�ϴ���Ŀ������', 3, 101600);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(101603, 0, 'OLDKMYEB_DEL', 'account.OldkmyebDel', '', '�ϴ���Ŀ����ɾ��', 4, 101600);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(101604, 0, 'OLDKMYEB_LOOKUP', 'account.OldkmyebLookup', '', '�ϴ���Ŀ�������', 1, 101600);
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
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(100200, 0, 'zzslx', '��ֵ˰����', '��ֵ˰����', 0, 0);
--
delete from Enumeration where ID = 100300;
--
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(100300, 0, 'gslz', '��˾����', '��˾����', 0, 0);
--
delete from Enumeration where ID = 100600;
--
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(100600, 0, 'zhxz', '�˻�����', '�˻�����', 0, 0);
--
delete from Enumeration where ID = 101100;
--
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(101100, 0, 'khxz', '�ͻ�����', '�ͻ�����', 0, 0);
--
delete from Enumeration where ID = 101400;
--
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(101400, 0, 'kmfx', '��Ŀ����', '��Ŀ����', 0, 0);
--
delete from Enumeration where ID = 101500;
--
insert into Enumeration(ID, version, enName, displayRef, description, enumerationType, creator) values(101500, 0, 'kmlx', '��Ŀ����', '��Ŀ����', 0, 0);
--



delete from EnumerationValue where ID = 100200;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(100200, 0, 'ybnsr', 'һ����˰��', 'һ����˰��', '', 100200, 0);
--
delete from EnumerationValue where ID = 100201;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(100201, 0, 'xgmnsr', 'С��ģ��˰��', 'С��ģ��˰��', '', 100200, 0);
--
delete from EnumerationValue where ID = 100202;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(100202, 0, 'hdzsh', '�˶����ջ�', '�˶����ջ�', '', 100200, 0);
--
delete from EnumerationValue where ID = 100203;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(100203, 0, 'fzzsnsr', '����ֵ˰��˰��', '����ֵ˰��˰��', '', 100200, 0);
--
delete from EnumerationValue where ID = 100300;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(100300, 0, 'gyqy', '������ҵ', '������ҵ', '', 100300, 0);
--
delete from EnumerationValue where ID = 100600;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(100600, 0, 'jbh', '������', '������', '', 100600, 0);
--
delete from EnumerationValue where ID = 100601;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(100601, 0, 'ybh', 'һ�㻧', 'һ�㻧', '', 100600, 0);
--
delete from EnumerationValue where ID = 100602;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(100602, 0, 'qth', '������', '������', '', 100600, 0);
--
delete from EnumerationValue where ID = 101100;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(101100, 0, 'kh', '�ͻ�', '�ͻ�', '', 101100, 0);
--
delete from EnumerationValue where ID = 101400;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(101400, 0, 'jf', '�跽', '�跽', '1', 101400, 0);
--
delete from EnumerationValue where ID = 101401;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(101401, 0, 'df', '����', '����', '2', 101400, 0);
--
delete from EnumerationValue where ID = 101500;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(101500, 0, 'zcl', '�ʲ���', '�ʲ���', '', 101500, 0);
--
delete from EnumerationValue where ID = 101501;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(101501, 0, 'fzl', '��ծ��', '��ծ��', '', 101500, 0);
--
delete from EnumerationValue where ID = 101502;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(101502, 0, 'gtl', '��ͬ��', '��ͬ��', '', 101500, 0);
--
delete from EnumerationValue where ID = 101503;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(101503, 0, 'yl', 'Ȩ����', 'Ȩ����', '', 101500, 0);
--
delete from EnumerationValue where ID = 101504;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(101504, 0, 'cbl', '�ɱ���', '�ɱ���', '', 101500, 0);
--
delete from EnumerationValue where ID = 101505;
--
insert into EnumerationValue(ID, version, valueName, displayRef, description, valueCode, enumeration, creator) values(101505, 0, 'syl', '������', '������', '', 101500, 0);
--

--
delete from HI_Language where ID = 100200;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(100200, 0, '��ֵ˰����', 1, 0);
--
delete from HI_Language where ID = 100201;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(100201, 0, 'һ����˰��', 'zzslx', 1, 0);
--
delete from HI_Language where ID = 100202;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(100202, 0, 'С��ģ��˰��', 'zzslx', 1, 0);
--
delete from HI_Language where ID = 100203;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(100203, 0, '�˶����ջ�', 'zzslx', 1, 0);
--
delete from HI_Language where ID = 100204;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(100204, 0, '����ֵ˰��˰��', 'zzslx', 1, 0);
--
delete from HI_Language where ID = 100300;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(100300, 0, '��˾����', 1, 0);
--
delete from HI_Language where ID = 100301;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(100301, 0, '������ҵ', 'gslz', 1, 0);
--
delete from HI_Language where ID = 100600;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(100600, 0, '�˻�����', 1, 0);
--
delete from HI_Language where ID = 100601;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(100601, 0, '������', 'zhxz', 1, 0);
--
delete from HI_Language where ID = 100602;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(100602, 0, 'һ�㻧', 'zhxz', 1, 0);
--
delete from HI_Language where ID = 100603;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(100603, 0, '������', 'zhxz', 1, 0);
--
delete from HI_Language where ID = 101100;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(101100, 0, '�ͻ�����', 1, 0);
--
delete from HI_Language where ID = 101101;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101101, 0, '�ͻ�', 'khxz', 1, 0);
--
delete from HI_Language where ID = 101200;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(101200, 0, '��Ŀ����', 1, 0);
--
delete from HI_Language where ID = 101201;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101201, 0, '��Ŀ���', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101202;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101202, 0, '��Ŀ����', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101203;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101203, 0, '��Ŀ����', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101204;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101204, 0, '��Ŀ����', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101205;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101205, 0, '��Ŀ����', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101206;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101206, 0, '��Ŀλ��', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101207;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101207, 0, '��Ŀ��ϸ', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101208;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101208, 0, '�ϼ���Ŀ', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101209;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101209, 0, '��Һ���', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101210;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101210, 0, '�������ʽ����', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101211;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101211, 0, '��ʶ', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101212;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101212, 0, '��������', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101213;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101213, 0, '��������', 'Kjkm', 1, 0);
--
delete from HI_Language where ID = 101400;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(101400, 0, '��Ŀ����', 1, 0);
--
delete from HI_Language where ID = 101401;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101401, 0, '�跽', 'kmfx', 1, 0);
--
delete from HI_Language where ID = 101402;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101402, 0, '����', 'kmfx', 1, 0);
--
delete from HI_Language where ID = 101500;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(101500, 0, '��Ŀ����', 1, 0);
--
delete from HI_Language where ID = 101501;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101501, 0, '�ʲ���', 'kmlx', 1, 0);
--
delete from HI_Language where ID = 101502;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101502, 0, '��ծ��', 'kmlx', 1, 0);
--
delete from HI_Language where ID = 101503;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101503, 0, '��ͬ��', 'kmlx', 1, 0);
--
delete from HI_Language where ID = 101504;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101504, 0, 'Ȩ����', 'kmlx', 1, 0);
--
delete from HI_Language where ID = 101505;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101505, 0, '�ɱ���', 'kmlx', 1, 0);
--
delete from HI_Language where ID = 101506;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101506, 0, '������', 'kmlx', 1, 0);
--
delete from HI_Language where ID = 101600;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(101600, 0, '�ϴ���Ŀ����', 1, 0);
--
delete from HI_Language where ID = 101601;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101601, 0, '����', 'Oldkmyeb', 1, 0);
--
delete from HI_Language where ID = 101602;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(101602, 0, '��������', 'Oldkmyeb', 1, 0);
