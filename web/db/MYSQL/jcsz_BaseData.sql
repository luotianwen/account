
delete from HiMenu where ID = 300000;
--
insert into HiMenu(ID, version, menuName, displayRef, description, parentMenu, sequence, creator) values(300000, 0, 'jcsz', '��������', '��������', 0, 9999, 0);
--



delete from MenuLink where ID = 300100;
--
insert into MenuLink(ID, version, linkUrl, displayRef, description, authority, sequence, menu, menuLinkType, creator) values(300100, 0, '/companyList.action', '��ҵ��Ϣ', '��ҵ��Ϣ', 300100, 9999, 300000, 0, 0);
--
delete from MenuLink where ID = 300200;
--
insert into MenuLink(ID, version, linkUrl, displayRef, description, authority, sequence, menu, menuLinkType, creator) values(300200, 0, '/bzszList.action', '��������', '��������', 300200, 9999, 300000, 0, 0);
--
delete from MenuLink where ID = 300300;
--
insert into MenuLink(ID, version, linkUrl, displayRef, description, authority, sequence, menu, menuLinkType, creator) values(300300, 0, '/pzzlList.action', 'ƾ֤��������
', 'ƾ֤��������
', 300300, 9999, 300000, 0, 0);
--
delete from MenuLink where ID = 300400;
--
insert into MenuLink(ID, version, linkUrl, displayRef, description, authority, sequence, menu, menuLinkType, creator) values(300400, 0, '/yhszList.action', '������������
', '������������
', 300400, 9999, 300000, 0, 0);
--



delete from HI_Authority where ID = 300100;
--
delete from HI_Authority where ID = 300101;
--
delete from HI_Authority where ID = 300102;
--
delete from HI_Authority where ID = 300103;
--
delete from HI_Authority where ID = 300104;
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(300100, 0, 'COMPANY_LIST', 'jcsz.CompanyList', '', '��ҵ��Ϣ��ѯ', 1, 300100);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(300101, 0, 'COMPANY_VIEW', 'jcsz.CompanyView', '', '��ҵ��Ϣ�鿴', 2, 300100);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(300102, 0, 'COMPANY_SAVE', 'jcsz.CompanySave', '', '��ҵ��Ϣ����', 3, 300100);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(300103, 0, 'COMPANY_DEL', 'jcsz.CompanyDel', '', '��ҵ��Ϣɾ��', 4, 300100);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(300104, 0, 'COMPANY_LOOKUP', 'jcsz.CompanyLookup', '', '��ҵ��Ϣ����', 1, 300100);
--
delete from HI_Authority where ID = 300200;
--
delete from HI_Authority where ID = 300201;
--
delete from HI_Authority where ID = 300202;
--
delete from HI_Authority where ID = 300203;
--
delete from HI_Authority where ID = 300204;
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(300200, 0, 'BZSZ_LIST', 'jcsz.BzszList', '', '�������ò�ѯ', 1, 300200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(300201, 0, 'BZSZ_VIEW', 'jcsz.BzszView', '', '�������ò鿴', 2, 300200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(300202, 0, 'BZSZ_SAVE', 'jcsz.BzszSave', '', '�������ñ���', 3, 300200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(300203, 0, 'BZSZ_DEL', 'jcsz.BzszDel', '', '��������ɾ��', 4, 300200);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(300204, 0, 'BZSZ_LOOKUP', 'jcsz.BzszLookup', '', '�������ô���', 1, 300200);
--
delete from HI_Authority where ID = 300300;
--
delete from HI_Authority where ID = 300301;
--
delete from HI_Authority where ID = 300302;
--
delete from HI_Authority where ID = 300303;
--
delete from HI_Authority where ID = 300304;
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(300300, 0, 'PZZL_LIST', 'jcsz.PzzlList', '', 'ƾ֤��������
��ѯ', 1, 300300);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(300301, 0, 'PZZL_VIEW', 'jcsz.PzzlView', '', 'ƾ֤��������
�鿴', 2, 300300);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(300302, 0, 'PZZL_SAVE', 'jcsz.PzzlSave', '', 'ƾ֤��������
����', 3, 300300);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(300303, 0, 'PZZL_DEL', 'jcsz.PzzlDel', '', 'ƾ֤��������
ɾ��', 4, 300300);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(300304, 0, 'PZZL_LOOKUP', 'jcsz.PzzlLookup', '', 'ƾ֤��������
����', 1, 300300);
--
delete from HI_Authority where ID = 300400;
--
delete from HI_Authority where ID = 300401;
--
delete from HI_Authority where ID = 300402;
--
delete from HI_Authority where ID = 300403;
--
delete from HI_Authority where ID = 300404;
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(300400, 0, 'YHSZ_LIST', 'jcsz.YhszList', '', '������������
��ѯ', 1, 300400);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(300401, 0, 'YHSZ_VIEW', 'jcsz.YhszView', '', '������������
�鿴', 2, 300400);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(300402, 0, 'YHSZ_SAVE', 'jcsz.YhszSave', '', '������������
����', 3, 300400);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(300403, 0, 'YHSZ_DEL', 'jcsz.YhszDel', '', '������������
ɾ��', 4, 300400);
--
insert into HI_Authority(ID, version, authorityName, displayRef, propertedResource, description, authorityType, menuLink) values(300404, 0, 'YHSZ_LOOKUP', 'jcsz.YhszLookup', '', '������������
����', 1, 300400);
--

delete from HI_PrivilegeResource where ID = 300100;
--
delete from HI_PrivilegeResource where ID = 300101;
--
delete from HI_PrivilegeResource where ID = 300102;
--
delete from HI_PrivilegeResource where ID = 300103;
--
delete from HI_PrivilegeResource where ID = 300104;
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer, bizExtAuthNames) values(300100, 0, 'COMPANY_LIST', '/companyList.action', 'com.huolong.jcsz.service.CompanyManager.getSecurityCompanyList', 'COMPANY_LOOKUP');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(300101, 0, 'COMPANY_VIEW', '/companyView.action', 'com.huolong.jcsz.service.CompanyManager.getSecurityCompanyById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(300102, 0, 'COMPANY_SAVE', '/companySave.action', 'com.huolong.jcsz.service.CompanyManager.saveSecurityCompany');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(300103, 0, 'COMPANY_DEL', '/companyRemove.action', 'com.huolong.jcsz.service.CompanyManager.removeSecurityCompanyById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer) values(300104, 0, 'COMPANY_LOOKUP', '/companyLookup.action');
--
delete from HI_PrivilegeResource where ID = 300200;
--
delete from HI_PrivilegeResource where ID = 300201;
--
delete from HI_PrivilegeResource where ID = 300202;
--
delete from HI_PrivilegeResource where ID = 300203;
--
delete from HI_PrivilegeResource where ID = 300204;
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer, bizExtAuthNames) values(300200, 0, 'BZSZ_LIST', '/bzszList.action', 'com.huolong.jcsz.service.BzszManager.getSecurityBzszList', 'BZSZ_LOOKUP');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(300201, 0, 'BZSZ_VIEW', '/bzszView.action', 'com.huolong.jcsz.service.BzszManager.getSecurityBzszById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(300202, 0, 'BZSZ_SAVE', '/bzszSave.action', 'com.huolong.jcsz.service.BzszManager.saveSecurityBzsz');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(300203, 0, 'BZSZ_DEL', '/bzszRemove.action', 'com.huolong.jcsz.service.BzszManager.removeSecurityBzszById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer) values(300204, 0, 'BZSZ_LOOKUP', '/bzszLookup.action');
--
delete from HI_PrivilegeResource where ID = 300300;
--
delete from HI_PrivilegeResource where ID = 300301;
--
delete from HI_PrivilegeResource where ID = 300302;
--
delete from HI_PrivilegeResource where ID = 300303;
--
delete from HI_PrivilegeResource where ID = 300304;
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer, bizExtAuthNames) values(300300, 0, 'PZZL_LIST', '/pzzlList.action', 'com.huolong.jcsz.service.PzzlManager.getSecurityPzzlList', 'PZZL_LOOKUP');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(300301, 0, 'PZZL_VIEW', '/pzzlView.action', 'com.huolong.jcsz.service.PzzlManager.getSecurityPzzlById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(300302, 0, 'PZZL_SAVE', '/pzzlSave.action', 'com.huolong.jcsz.service.PzzlManager.saveSecurityPzzl');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(300303, 0, 'PZZL_DEL', '/pzzlRemove.action', 'com.huolong.jcsz.service.PzzlManager.removeSecurityPzzlById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer) values(300304, 0, 'PZZL_LOOKUP', '/pzzlLookup.action');
--
delete from HI_PrivilegeResource where ID = 300400;
--
delete from HI_PrivilegeResource where ID = 300401;
--
delete from HI_PrivilegeResource where ID = 300402;
--
delete from HI_PrivilegeResource where ID = 300403;
--
delete from HI_PrivilegeResource where ID = 300404;
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer, bizExtAuthNames) values(300400, 0, 'YHSZ_LIST', '/yhszList.action', 'com.huolong.jcsz.service.YhszManager.getSecurityYhszList', 'YHSZ_LOOKUP');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(300401, 0, 'YHSZ_VIEW', '/yhszView.action', 'com.huolong.jcsz.service.YhszManager.getSecurityYhszById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(300402, 0, 'YHSZ_SAVE', '/yhszSave.action', 'com.huolong.jcsz.service.YhszManager.saveSecurityYhsz');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer, businessLayer) values(300403, 0, 'YHSZ_DEL', '/yhszRemove.action', 'com.huolong.jcsz.service.YhszManager.removeSecurityYhszById');
--
insert into HI_PrivilegeResource(ID, version, authorityName, viewLayer) values(300404, 0, 'YHSZ_LOOKUP', '/yhszLookup.action');
--







--
delete from HI_Language where ID = 300100;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(300100, 0, '��ҵ��Ϣ', 1, 0);
--
delete from HI_Language where ID = 300101;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300101, 0, '��˾����', 'Company', 1, 0);
--
delete from HI_Language where ID = 300102;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300102, 0, '˰��ǼǺ�', 'Company', 1, 0);
--
delete from HI_Language where ID = 300103;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300103, 0, '���������', 'Company', 1, 0);
--
delete from HI_Language where ID = 300104;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300104, 0, '��ֵ˰����', 'Company', 1, 0);
--
delete from HI_Language where ID = 300105;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300105, 0, 'Ӫҵִ��ע���', 'Company', 1, 0);
--
delete from HI_Language where ID = 300106;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300106, 0, '��֯��������', 'Company', 1, 0);
--
delete from HI_Language where ID = 300107;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300107, 0, '��ҵ����', 'Company', 1, 0);
--
delete from HI_Language where ID = 300108;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300108, 0, 'ע���ʱ�', 'Company', 1, 0);
--
delete from HI_Language where ID = 300109;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300109, 0, '������ҵ', 'Company', 1, 0);
--
delete from HI_Language where ID = 300110;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300110, 0, '���˴���', 'Company', 1, 0);
--
delete from HI_Language where ID = 300111;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300111, 0, '��ϵ�绰', 'Company', 1, 0);
--
delete from HI_Language where ID = 300112;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300112, 0, '����', 'Company', 1, 0);
--
delete from HI_Language where ID = 300113;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300113, 0, '��������', 'Company', 1, 0);
--
delete from HI_Language where ID = 300114;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300114, 0, '������ϵ��', 'Company', 1, 0);
--
delete from HI_Language where ID = 300115;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300115, 0, '��ϵ�˵绰', 'Company', 1, 0);
--
delete from HI_Language where ID = 300116;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300116, 0, '��ϵ�˵�������', 'Company', 1, 0);
--
delete from HI_Language where ID = 300117;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300117, 0, '��ϵ�˴���', 'Company', 1, 0);
--
delete from HI_Language where ID = 300118;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300118, 0, 'ע���ַ', 'Company', 1, 0);
--
delete from HI_Language where ID = 300119;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300119, 0, '��Ӫ��ַ', 'Company', 1, 0);
--
delete from HI_Language where ID = 300120;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300120, 0, 'ͨѶ��ַ', 'Company', 1, 0);
--
delete from HI_Language where ID = 300121;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300121, 0, '��������', 'Company', 1, 0);
--
delete from HI_Language where ID = 300122;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300122, 0, 'ϵͳ����ʱ��', 'Company', 1, 0);
--
delete from HI_Language where ID = 300123;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300123, 0, '��ȵ��˽�����', 'Company', 1, 0);
--
delete from HI_Language where ID = 300124;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300124, 0, '��������', 'Company', 1, 0);
--
delete from HI_Language where ID = 300200;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(300200, 0, '��������', 1, 0);
--
delete from HI_Language where ID = 300201;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300201, 0, '��������', 'Bzsz', 1, 0);
--
delete from HI_Language where ID = 300202;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300202, 0, '����', 'Bzsz', 1, 0);
--
delete from HI_Language where ID = 300203;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300203, 0, '��ʶ', 'Bzsz', 1, 0);
--
delete from HI_Language where ID = 300204;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300204, 0, '��������', 'Bzsz', 1, 0);
--
delete from HI_Language where ID = 300300;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(300300, 0, 'ƾ֤��������
', 1, 0);
--
delete from HI_Language where ID = 300301;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300301, 0, '��������', 'Pzzl', 1, 0);
--
delete from HI_Language where ID = 300302;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300302, 0, '���', 'Pzzl', 1, 0);
--
delete from HI_Language where ID = 300303;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300303, 0, '��д����', 'Pzzl', 1, 0);
--
delete from HI_Language where ID = 300304;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300304, 0, '��������', 'Pzzl', 1, 0);
--
delete from HI_Language where ID = 300400;
--
insert into HI_Language(ID, version, keyStr, creator, isSystem) values(300400, 0, '������������
', 1, 0);
--
delete from HI_Language where ID = 300401;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300401, 0, '��������', 'Yhsz', 1, 0);
--
delete from HI_Language where ID = 300402;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300402, 0, '�˻���', 'Yhsz', 1, 0);
--
delete from HI_Language where ID = 300403;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300403, 0, '�˻�����', 'Yhsz', 1, 0);
--
delete from HI_Language where ID = 300404;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300404, 0, '��������', 'Yhsz', 1, 0);
--
delete from HI_Language where ID = 300405;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300405, 0, '��ϵ��', 'Yhsz', 1, 0);
--
delete from HI_Language where ID = 300406;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300406, 0, '��ϵ�绰', 'Yhsz', 1, 0);
--
delete from HI_Language where ID = 300407;
--
insert into HI_Language(ID, version, keyStr, entity, creator, isSystem) values(300407, 0, '��������', 'Yhsz', 1, 0);
