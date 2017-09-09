package com.huolong.kmyeb.action.struts;
/*
 * 
 * 
 * 
 * 
 * 期间为01的导入
 * 
 * 
 * 
 */
import org.hi.base.report.excel.action.struts.JXLSExcelBaseAction;

    public class KmyebDemo2Action extends JXLSExcelBaseAction {
    	public void prepare() {
    		
    	}
    	/*
	 

	*//**
	 * 科目余额表列表
	 *//*
	
	public void prepare() {
		KjkmManager kjkmMgr = (KjkmManager) SpringContextHolder
				.getBean(Kjkm.class);
		List<Kjkm> kjkmlist = kjkmMgr.getSecurityKjkmList2(null);
		conditions = new ArrayList<Condition>();
		for (Kjkm kjkm : kjkmlist) {
			String kmfx = kjkm.getKmfx() == 101400 ? "借" : "贷";
			if (kjkm.getFzhs() == null && kjkm.getWbhs() == 3201
					&& kjkm.getSljehs() == 3201) {
				conditions.addAll(isNotFzhs(kjkm, kmfx));
			} else {
				conditions.addAll(isFzhs(kjkm, kmfx));
			}
		}
	}

	private List<Condition> isNotFzhs(Kjkm kjkm, String kmfx) {
		List<Condition> cdts = new ArrayList<Condition>();
		Condition c = new Condition();
		c.setCondition1("人民币");
		c.setCondition2(kjkm.getKmbh());
		c.setCondition3(kjkm.getKmmc());
		c.setCondition4("");
		c.setCondition5(kmfx);
		c.setCondition6("1.0000");
		c.setCondition7("0.00");
		c.setCondition8("0.00");
		c.setCondition9("0.00");
		c.setCondition10("0.00");
		c.setCondition11("0.00");
		c.setCondition12("0.00");
		c.setCondition13("0.00");
		cdts.add(c);
		return cdts;
	}

	private List<Condition> isFzhs(Kjkm kjkm, String kmfx) {
		List<Condition> cdts = new ArrayList<Condition>();
		String name = kjkm.getFzhs().getName();
		if ("部门".equals(name)) {
			FzhsbmManager fbMgr = (FzhsbmManager) SpringContextHolder
					.getBean(Fzhsbm.class);
			List<Fzhsbm> fb = fbMgr.getObjects();
			if(null!=fb&&fb.size()>0)
			for (Fzhsbm fzhsbm : fb) {
				Condition c = new Condition();
				c.setCondition1("人民币");
				c.setCondition2(kjkm.getKmbh());
				c.setCondition3(kjkm.getKmmc());
				c.setCondition4(fzhsbm.getName());
				c.setCondition5(kmfx);
				c.setCondition6("1.0000");
				c.setCondition7("0.00");
				c.setCondition8("0.00");
				c.setCondition9("0.00");
				c.setCondition10("0.00");
				c.setCondition11("0.00");
				c.setCondition12("0.00");
				c.setCondition13("0.00");
				cdts.add(c);

			}
		}
		if ("存货类别".equals(name)) {
			FzhschlbManager fbMgr = (FzhschlbManager) SpringContextHolder
					.getBean(Fzhschlb.class);
			List<Fzhschlb> fb = fbMgr.getObjects();
			if(null!=fb&&fb.size()>0)
			for (Fzhschlb fzhsbm : fb) {
				Condition c = new Condition();
				c.setCondition1("人民币");
				c.setCondition2(kjkm.getKmbh());
				c.setCondition3(kjkm.getKmmc());
				c.setCondition4(fzhsbm.getName());
				c.setCondition5(kmfx);
				c.setCondition6("1.0000");
				c.setCondition7("0.00");
				c.setCondition8("0.00");
				c.setCondition9("0.00");
				c.setCondition10("0.00");
				c.setCondition11("0.00");
				c.setCondition12("0.00");
				c.setCondition13("0.00");
				cdts.add(c);

			}
		}
		if ("人员".equals(name)) {
			FzhsryManager fbMgr = (FzhsryManager) SpringContextHolder
					.getBean(Fzhsry.class);
			List<Fzhsry> fb = fbMgr.getObjects();
			if(null!=fb&&fb.size()>0)
			for (Fzhsry fzhsbm : fb) {
				Condition c = new Condition();
				c.setCondition1("人民币");
				c.setCondition2(kjkm.getKmbh());
				c.setCondition3(kjkm.getKmmc());
				c.setCondition4(fzhsbm.getName());
				c.setCondition5(kmfx);
				c.setCondition6("1.0000");
				c.setCondition7("0.00");
				c.setCondition8("0.00");
				c.setCondition9("0.00");
				c.setCondition10("0.00");
				c.setCondition11("0.00");
				c.setCondition12("0.00");
				c.setCondition13("0.00");
				cdts.add(c);

			}
		}
		if ("供应商".equals(name)) {
			FzhsgysManager fbMgr = (FzhsgysManager) SpringContextHolder
					.getBean(Fzhsgys.class);
			List<Fzhsgys> fb = fbMgr.getObjects();
			if(null!=fb&&fb.size()>0)
			for (Fzhsgys fzhsbm : fb) {
				Condition c = new Condition();
				c.setCondition1("人民币");
				c.setCondition2(kjkm.getKmbh());
				c.setCondition3(kjkm.getKmmc());
				c.setCondition4(fzhsbm.getName());
				c.setCondition5(kmfx);
				c.setCondition6("1.0000");
				c.setCondition7("0.00");
				c.setCondition8("0.00");
				c.setCondition9("0.00");
				c.setCondition10("0.00");
				c.setCondition11("0.00");
				c.setCondition12("0.00");
				c.setCondition13("0.00");
				cdts.add(c);

			}
		}
		if ("客户".equals(name)) {
			FzhskhManager fbMgr = (FzhskhManager) SpringContextHolder
					.getBean(Fzhskh.class);
			List<Fzhskh> fb = fbMgr.getObjects();
			if(null!=fb&&fb.size()>0)
			for (Fzhskh fzhsbm : fb) {
				Condition c = new Condition();
				c.setCondition1("人民币");
				c.setCondition2(kjkm.getKmbh());
				c.setCondition3(kjkm.getKmmc());
				c.setCondition4(fzhsbm.getName());
				c.setCondition5(kmfx);
				c.setCondition6("1.0000");
				c.setCondition7("0.00");
				c.setCondition8("0.00");
				c.setCondition9("0.00");
				c.setCondition10("0.00");
				c.setCondition11("0.00");
				c.setCondition12("0.00");
				c.setCondition13("0.00");
				cdts.add(c);

			}
		}
		if ("往来核算".equals(name)) {
			FzhswlhsManager fbMgr = (FzhswlhsManager) SpringContextHolder
					.getBean(Fzhswlhs.class);
			List<Fzhswlhs> fb = fbMgr.getObjects();
			if(null!=fb&&fb.size()>0)
			for (Fzhswlhs fzhsbm : fb) {
				Condition c = new Condition();
				c.setCondition1("人民币");
				c.setCondition2(kjkm.getKmbh());
				c.setCondition3(kjkm.getKmmc());
				c.setCondition4(fzhsbm.getName());
				c.setCondition5(kmfx);
				c.setCondition6("1.0000");
				c.setCondition7("0.00");
				c.setCondition8("0.00");
				c.setCondition9("0.00");
				c.setCondition10("0.00");
				c.setCondition11("0.00");
				c.setCondition12("0.00");
				c.setCondition13("0.00");
				cdts.add(c);

			}
		}
		if ("项目".equals(name)) {
			FzhsxmManager fbMgr = (FzhsxmManager) SpringContextHolder
					.getBean(Fzhsxm.class);
			List<Fzhsxm> fb = fbMgr.getObjects();
			if(null!=fb&&fb.size()>0)
			for (Fzhsxm fzhsbm : fb) {
				Condition c = new Condition();
				c.setCondition1("人民币");
				c.setCondition2(kjkm.getKmbh());
				c.setCondition3(kjkm.getKmmc());
				c.setCondition4(fzhsbm.getName());
				c.setCondition5(kmfx);
				c.setCondition6("1.0000");
				c.setCondition7("0.00");
				c.setCondition8("0.00");
				c.setCondition9("0.00");
				c.setCondition10("0.00");
				c.setCondition11("0.00");
				c.setCondition12("0.00");
				c.setCondition13("0.00");
				cdts.add(c);

			}
		}
		return cdts;
	}
*/}
