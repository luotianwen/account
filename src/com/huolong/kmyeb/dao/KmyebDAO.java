package com.huolong.kmyeb.dao;

import java.util.List;

import org.hi.framework.dao.DAO;

import com.huolong.kmyeb.model.Kmyeb;

public interface KmyebDAO extends DAO{


	List<Kmyeb> getKmyebBykmbh(String kmbh, String kjqj, Integer gsid) throws Exception;
	List<Kmyeb> getKmyebBykmid(String kmid, String kjqj, Integer gsid) throws Exception;
	List<Kmyeb> getKmyebListBYkjqj(String dqj, Integer id)throws Exception;

}
