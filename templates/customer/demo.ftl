package ${service.packageName}.demo

import org.hi.SpringContextHolder;
import ${service.packageName}.model.${entity.entityName?cap_first};
import ${service.packageName}.service.${entity.entityName?cap_first}Manager;
import org.hi.test.HiTestCase;

public class Demo${entity.entityName?cap_first} {


	public void testBusiness(){
		${entity.entityName?cap_first}Manager bizMgr = (${entity.entityName?cap_first}Manager)SpringContextHolder.getBean(${entity.entityName?cap_first}.class);
	}
	
}