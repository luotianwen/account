
delete from HiMenu where ID = 500000;
--
insert into HiMenu(ID, version, menuName, displayRef, description, parentMenu, sequence, creator) values(500000, 0, 'kmyeb', '��Ŀ����', '��Ŀ����', 0, 9999, 0);
--



delete from MenuLink where ID = 500100;
--
insert into MenuLink(ID, version, linkUrl, displayRef, description, authority, sequence, menu, menuLinkType, creator) values(500100, 0, '/kmyebList.action', '��Ŀ����', '��Ŀ����', 500100, 9999, 500000, 0, 0);
--
delete from MenuLink where ID = 500200;
--
insert into MenuLink(ID, version, linkUrl, displayRef, description, authority, sequence, menu, menuLinkType, creator) values(500200, 0, '/ckyetjbList.action', '��������ڱ�', '��������ڱ�', 500200, 9999, 500000, 0, 0);
--
delete from MenuLink where ID = 500300;
--
insert into MenuLink(ID, version, linkUrl, displayRef, description, authority, sequence, menu, menuLinkType, creator) values(500300, 0, '/bzhlList.action', '��ĩ����', '��ĩ����', 500300, 9999, 500000, 0, 0);
--



delete from HI_Authority where ID = 500100;
--
delete from HI_Authority where ID = 500101;
--
delete from HI_Authority where ID = 500102;
--
delete from HI_Authority where ID = 500103;
--
delete from HI_Authority where ID = 500104;
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(500100, 0, 'KMYEB_LIST', 'kmyeb.KmyebList', '', '��Ŀ�����ѯ', 1, 500100);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(500101, 0, 'KMYEB_VIEW', 'kmyeb.KmyebView', '', '��Ŀ����鿴', 2, 500100);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(500102, 0, 'KMYEB_SAVE', 'kmyeb.KmyebSave', '', '��Ŀ������', 3, 500100);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(500103, 0, 'KMYEB_DEL', 'kmyeb.KmyebDel', '', '��Ŀ����ɾ��', 4, 500100);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(500104, 0, 'KMYEB_LOOKUP', 'kmyeb.KmyebLookup', '', '��Ŀ�������', 1, 500100);
--
delete from HI_Authority where ID = 500200;
--
delete from HI_Authority where ID = 500201;
--
delete from HI_Authority where ID = 500202;
--
delete from HI_Authority where ID = 500203;
--
delete from HI_Authority where ID = 500204;
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(500200, 0, 'CKYETJB_LIST', 'kmyeb.CkyetjbList', '', '��������ڱ��ѯ', 1, 500200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(500201, 0, 'CKYETJB_VIEW', 'kmyeb.CkyetjbView', '', '��������ڱ�鿴', 2, 500200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(500202, 0, 'CKYETJB_SAVE', 'kmyeb.CkyetjbSave', '', '��������ڱ���', 3, 500200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(500203, 0, 'CKYETJB_DEL', 'kmyeb.CkyetjbDel', '', '��������ڱ�ɾ��', 4, 500200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(500204, 0, 'CKYETJB_LOOKUP', 'kmyeb.CkyetjbLookup', '', '��������ڱ����', 1, 500200);
--
delete from HI_Authority where ID = 500300;
--
delete from HI_Authority where ID = 500301;
--
delete from HI_Authority where ID = 500302;
--
delete from HI_Authority where ID = 500303;
--
delete from HI_Authority where ID = 500304;
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(500300, 0, 'BZHL_LIST', 'kmyeb.BzhlList', '', '��ĩ�����ѯ', 1, 500300);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(500301, 0, 'BZHL_VIEW', 'kmyeb.BzhlView', '', '��ĩ����鿴', 2, 500300);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(500302, 0, 'BZHL_SAVE', 'kmyeb.BzhlSave', '', '��ĩ���㱣��', 3, 500300);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(500303, 0, 'BZHL_DEL', 'kmyeb.BzhlDel', '', '��ĩ����ɾ��', 4, 500300);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(500304, 0, 'BZHL_LOOKUP', 'kmyeb.BzhlLookup', '', '��ĩ�������', 1, 500300);
--

delete from HI_PrivilegeResource where ID = 500100;
--
delete from HI_PrivilegeResource where ID = 500101;
--
delete from HI_PrivilegeResource where ID = 500102;
--
delete from HI_PrivilegeResource where ID = 500103;
--
delete from HI_PrivilegeResource where ID = 500104;
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer, bizExtAuthNames) values(500100, 0, 'KMYEB_LIST', '/kmyebList.action', 'com.huolong.kmyeb.service.KmyebManager.getSecurityKmyebList', 'KMYEB_LOOKUP');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(500101, 0, 'KMYEB_VIEW', '/kmyebView.action', 'com.huolong.kmyeb.service.KmyebManager.getSecurityKmyebById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(500102, 0, 'KMYEB_SAVE', '/kmyebSave.action', 'com.huolong.kmyeb.service.KmyebManager.saveSecurityKmyeb');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(500103, 0, 'KMYEB_DEL', '/kmyebRemove.action', 'com.huolong.kmyeb.service.KmyebManager.removeSecurityKmyebById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer) values(500104, 0, 'KMYEB_LOOKUP', '/kmyebLookup.action');
--
delete from HI_PrivilegeResource where ID = 500200;
--
delete from HI_PrivilegeResource where ID = 500201;
--
delete from HI_PrivilegeResource where ID = 500202;
--
delete from HI_PrivilegeResource where ID = 500203;
--
delete from HI_PrivilegeResource where ID = 500204;
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer, bizExtAuthNames) values(500200, 0, 'CKYETJB_LIST', '/ckyetjbList.action', 'com.huolong.kmyeb.service.CkyetjbManager.getSecurityCkyetjbList', 'CKYETJB_LOOKUP');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(500201, 0, 'CKYETJB_VIEW', '/ckyetjbView.action', 'com.huolong.kmyeb.service.CkyetjbManager.getSecurityCkyetjbById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(500202, 0, 'CKYETJB_SAVE', '/ckyetjbSave.action', 'com.huolong.kmyeb.service.CkyetjbManager.saveSecurityCkyetjb');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(500203, 0, 'CKYETJB_DEL', '/ckyetjbRemove.action', 'com.huolong.kmyeb.service.CkyetjbManager.removeSecurityCkyetjbById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer) values(500204, 0, 'CKYETJB_LOOKUP', '/ckyetjbLookup.action');
--
delete from HI_PrivilegeResource where ID = 500300;
--
delete from HI_PrivilegeResource where ID = 500301;
--
delete from HI_PrivilegeResource where ID = 500302;
--
delete from HI_PrivilegeResource where ID = 500303;
--
delete from HI_PrivilegeResource where ID = 500304;
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer, bizExtAuthNames) values(500300, 0, 'BZHL_LIST', '/bzhlList.action', 'com.huolong.kmyeb.service.BzhlManager.getSecurityBzhlList', 'BZHL_LOOKUP');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(500301, 0, 'BZHL_VIEW', '/bzhlView.action', 'com.huolong.kmyeb.service.BzhlManager.getSecurityBzhlById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(500302, 0, 'BZHL_SAVE', '/bzhlSave.action', 'com.huolong.kmyeb.service.BzhlManager.saveSecurityBzhl');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(500303, 0, 'BZHL_DEL', '/bzhlRemove.action', 'com.huolong.kmyeb.service.BzhlManager.removeSecurityBzhlById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer) values(500304, 0, 'BZHL_LOOKUP', '/bzhlLookup.action');
--







--
delete from HI_Language where ID = 500100;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(500100, 0, '��Ŀ����', 1, 0);
--
delete from HI_Language where ID = 500101;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500101, 0, '�����ۼƽ跽', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500102;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500102, 0, '�����ۼƴ���', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500103;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500103, 0, '�����ۼƽ跽(��λ��)', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500104;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500104, 0, '�����ۼƴ���(��λ��)', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500105;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500105, 0, '���ڷ����跽', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500106;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500106, 0, '���ڷ�������', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500107;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500107, 0, '�ڳ�����', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500108;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500108, 0, '��ĩ����', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500109;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500109, 0, '��ĩ���', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500110;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500110, 0, '�������', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500111;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500111, 0, '���������', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500112;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500112, 0, '�����λ��', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500113;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500113, 0, '���ڷ����跽����', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500114;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500114, 0, '���ڷ�����������', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500115;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500115, 0, '���귢���跽����', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500116;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500116, 0, '���귢����������', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500117;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500117, 0, '�ڳ��������', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500118;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500118, 0, '�ڳ�����', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500119;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500119, 0, '��ĩ�������', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500120;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500120, 0, '��ĩ����', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500121;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500121, 0, '��������', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500122;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500122, 0, '����ڼ�', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500123;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500123, 0, '������λ', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500124;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500124, 0, '��λ���ڳ����', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500125;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500125, 0, '����ڳ����', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500126;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500126, 0, '�����ĩ���', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500127;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500127, 0, '�ڳ�����跽', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500128;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500128, 0, '�ڳ��������', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500129;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500129, 0, '�ڳ���λ�ұ���跽', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500130;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500130, 0, '�ڳ���λ�ұ������', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500131;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500131, 0, '��תǰ����ۼ���', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500132;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500132, 0, '��תǰ������', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500133;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500133, 0, '��Ŀ����', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500134;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500134, 0, '��˾����', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500135;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500135, 0, '��������', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500136;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500136, 0, '������������', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500137;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500137, 0, '��������', 'Kmyeb', 1, 0);
--
delete from HI_Language where ID = 500200;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(500200, 0, '��������ڱ�', 1, 0);
--
delete from HI_Language where ID = 500201;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500201, 0, '����', 'Ckyetjb', 1, 0);
--
delete from HI_Language where ID = 500202;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500202, 0, '��ҵ���д���ռ������', 'Ckyetjb', 1, 0);
--
delete from HI_Language where ID = 500203;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500203, 0, '��������', 'Ckyetjb', 1, 0);
--
delete from HI_Language where ID = 500204;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500204, 0, '����ڼ�', 'Ckyetjb', 1, 0);
--
delete from HI_Language where ID = 500205;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500205, 0, '���ж��˵����', 'Ckyetjb', 1, 0);
--
delete from HI_Language where ID = 500206;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500206, 0, '�������տ���', 'Ckyetjb', 1, 0);
--
delete from HI_Language where ID = 500207;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500207, 0, '�����Ѹ�����', 'Ckyetjb', 1, 0);
--
delete from HI_Language where ID = 500208;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500208, 0, '��ҵ���տ���', 'Ckyetjb', 1, 0);
--
delete from HI_Language where ID = 500209;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500209, 0, '��ҵ�Ѹ�����', 'Ckyetjb', 1, 0);
--
delete from HI_Language where ID = 500210;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500210, 0, '��ҵ���', 'Ckyetjb', 1, 0);
--
delete from HI_Language where ID = 500211;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500211, 0, '�������', 'Ckyetjb', 1, 0);
--
delete from HI_Language where ID = 500212;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500212, 0, '��Ա', 'Ckyetjb', 1, 0);
--
delete from HI_Language where ID = 500213;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500213, 0, '��������', 'Ckyetjb', 1, 0);
--
delete from HI_Language where ID = 500300;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(500300, 0, '��ĩ����', 1, 0);
--
delete from HI_Language where ID = 500301;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500301, 0, '��������', 'Bzhl', 1, 0);
--
delete from HI_Language where ID = 500302;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500302, 0, '�ڳ�����', 'Bzhl', 1, 0);
--
delete from HI_Language where ID = 500303;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500303, 0, '��ĩ����', 'Bzhl', 1, 0);
--
delete from HI_Language where ID = 500304;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500304, 0, '����ڼ�', 'Bzhl', 1, 0);
--
delete from HI_Language where ID = 500305;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500305, 0, 'column_6', 'Bzhl', 1, 0);
--
delete from HI_Language where ID = 500306;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500306, 0, 'column_7', 'Bzhl', 1, 0);
--
delete from HI_Language where ID = 500307;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(500307, 0, '��������', 'Bzhl', 1, 0);
