package com.hxx.ssm.service.imp;

import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.hxx.ssm.dao.SSMDao;
import com.hxx.ssm.pojo.SSMUser;
import com.hxx.ssm.service.Service;

@org.springframework.stereotype.Service
@Transactional
public class ServiceImp implements Service {

	/**
	 * 服务实现层
	 * 
	 * @author DELL
	 *
	 */

	@Autowired
	SSMDao dao;

	@Override
	public List<SSMUser> SelectFindAll() {
		List<SSMUser> list = dao.SelectFindAll();
		return list;
	}

	
	/**
	 * 删除
	 */
	@Override
	public void delect(int uid) {
		dao.delect(uid);
	}


	//根据id查
	@Override
	public SSMUser SelectgetById(int uid) {
		SSMUser user = dao.SelectgetById(uid);
		return user;
	}


	
	
	/**
	 *修改
	 * 
	 * @return
	 */
	@Override
	public void Update(SSMUser u) {
		dao.Update(u);
		
	}
	
	
	/**
	 *添加
	 * 
	 * @return
	 */
	public void Add(SSMUser u){
		dao.Add(u);
		
	}


	@Override
	public List<SSMUser> listByLike(String name) {
		Map<String, String> map = new ConcurrentHashMap<>();
		map.put("name", name);
		return dao.listByLike(map);
	}

}
