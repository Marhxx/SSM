package com.hxx.ssm.service;

import java.util.List;

import com.hxx.ssm.pojo.SSMUser;

/**服务层
 * @author DELL
 *
 */
public interface Service {
	//查询全部
	public List<SSMUser> SelectFindAll();
	
	//删除
	public void delect(int uid);
	
	//根据id查
	public SSMUser SelectgetById(int uid);
	
	
	/**
	 *修改
	 * 
	 * @return
	 */
	public void Update(SSMUser u);
	
	/**
	 * 模糊查询
	 */
	public List<SSMUser> listByLike(String name);
	
	
	/**
	 *添加
	 * 
	 * @return
	 */
	public void Add(SSMUser u);
}
