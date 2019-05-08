package com.hxx.ssm.dao;

import java.util.List;
import java.util.Map;

import com.hxx.ssm.pojo.SSMUser;

/**
 * 接口
 * 
 * @author DELL
 *
 */
public interface SSMDao {

	/**
	 * 查询全部
	 * 
	 * @return
	 */
	public List<SSMUser> SelectFindAll();
	
	
	/**
	 * 删除
	 * 
	 * @return
	 */
	public void delect(int uid);
	
	
	/**
	 *单个查询
	 * 
	 * @return
	 */
	public SSMUser SelectgetById(int uid);
	
	/**
	 *修改
	 * 
	 * @return
	 */
	public void Update(SSMUser u);
	
	
	
	public List<SSMUser> listByLike(Map<String, String> map);
	
	
	/**
	 *添加
	 * 
	 * @return
	 */
	public void Add(SSMUser u);
	
	

}
