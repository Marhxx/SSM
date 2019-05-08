package com.hxx.ssm.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hxx.ssm.pojo.SSMUser;
import com.hxx.ssm.service.Service;

/**
 * 控制层
 * 
 * @author DELL
 *
 */
@Controller
public class SSMController {

	@Autowired
	Service service;
/**
 * 查询
 * @param name
 * @param m
 * @return
 */
	@RequestMapping("/login")
	public String loginl(String name, Model m) {
		List<SSMUser> list = service.SelectFindAll();
		m.addAttribute("list", list);
		return "FindAll";

	}

	
	/**
	 * 删除
	 * @param name
	 * @param m
	 * @return
	 */
	@RequestMapping("/delect")
	public String loginl(int uid) {
		service.delect(uid);
		return "redirect:/login";

	}
	
	
	
	/**
	 * 根据id查询
	 * @param name
	 * @param m
	 * @return
	 */
	@RequestMapping("/getByIdd")
	public String getById(int uid,Model m) {
		SSMUser user = service.SelectgetById(uid);
		m.addAttribute("user", user);
		return "Update";

	}
	
	/**
	 * 根据名称模糊查询
	 */
	@PostMapping("/listByLike")
	@ResponseBody
	public List<SSMUser> listByLike(@Param("name") String name){
		//name = "%"+name+"%";
		List<SSMUser> list = service.listByLike(name);
		return list;
	}
	
	
	/**
	 * 修改
	 * @param name
	 * @param m
	 * @return
	 */
	@RequestMapping("/xiugai")
	public String update(SSMUser u) {
		service.Update(u);
		return "redirect:/login";
		
	}
	
	
	/**
	 * 添加
	 * @param name
	 * @param m
	 * @return
	 */
	@RequestMapping("/Add")
	public String Add(SSMUser u) {
		service.Add(u);
		return "redirect:/login";
		
	}

	
}
