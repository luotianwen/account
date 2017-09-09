package com.huolong.kmyeb.dao.ibatis3;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.hi.framework.dao.ibatis3.BaseDAOIbatis;
import org.hi.framework.dao.ibatis3.SqlSessionCallback;

import com.huolong.kmyeb.dao.KmyebDAO;
import com.huolong.kmyeb.model.Kmyeb;
public class KmyebDAOIbatis3 extends BaseDAOIbatis implements KmyebDAO{

	@Override
	public List<Kmyeb> getKmyebBykmid(String kmid, String kjqj,
			Integer gsid) throws Exception {
		final Map map=new HashMap();
		map.put("kmid", kmid);
		map.put("kjqj", kjqj);
		map.put("gsid", gsid);
		List<Kmyeb> list=new ArrayList<Kmyeb>();
		list= (List<Kmyeb>) this.execute(new SqlSessionCallback() {
			@Override
			public Object doInSqlSession(SqlSession arg0) throws SQLException {
				// TODO Auto-generated method stub
				return arg0.selectList("Kmyeb.getKmyebBykmid", map);
			}
		});
		return list;
	}

	@Override
	public List<Kmyeb> getKmyebListBYkjqj(String kjqj, Integer gsid) throws Exception {
		final Map map=new HashMap();
		map.put("kjqj", kjqj);
		map.put("gsid", gsid);
		List<Kmyeb> list=new ArrayList<Kmyeb>();
		list= (List<Kmyeb>) this.execute(new SqlSessionCallback() {
			@Override
			public Object doInSqlSession(SqlSession arg0) throws SQLException {
				// TODO Auto-generated method stub
				return arg0.selectList("Kmyeb.getKmyebListBYkjqj", map);
			}
		});
		return list;
	}

	@Override
	public List<Kmyeb> getKmyebBykmbh(String kmbh, String kjqj,
			Integer gsid) throws Exception {
		final Map map=new HashMap();
		map.put("kmbh", kmbh+"%");
		map.put("kjqj", kjqj);
		map.put("gsid", gsid);
		List<Kmyeb> list=new ArrayList<Kmyeb>();
		list= (List<Kmyeb>) this.execute(new SqlSessionCallback() {
			@Override
			public Object doInSqlSession(SqlSession arg0) throws SQLException {
				// TODO Auto-generated method stub
				return arg0.selectList("Kmyeb.getKmyebBykmbh", map);
			}
		});
		return list;
	}

 

}
