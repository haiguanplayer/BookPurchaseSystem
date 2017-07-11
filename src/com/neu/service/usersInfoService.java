package com.neu.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.neu.dao.usersDao;
import com.neu.util.ConvertUtil;

public class usersInfoService {
	
	private usersDao UsersDao;
	
	public usersInfoService(){
		this.UsersDao=new usersDao();
	}
	
	public Map<String,String> findbyID(Map<String,String[]> params){
		Map<String, String> item=null;
		Map<String,String> map=ConvertUtil.convertMap(params);
		List<Map<String, String>> list=UsersDao.search(map);
		if(list.size()>0){
			item=list.get(0);
		}
		return item;
	}	
	
	public Map<String, String> checkLogin(Map<String,String[]> params){
		Map<String, String> item=null;
		Map<String,String> map=ConvertUtil.convertMap(params);
		List<Map<String, String>> list=UsersDao.search(map);
		//System.out.print(list);
		if(list.size()>0){
			item=list.get(0);
		}
		//System.out.print(item);
		return item;
	}	
	
	
	public boolean doupdate(Map<String,String[]> params){
		boolean flag=false;
		Map<String,String> map=ConvertUtil.convertMap(params);
		Map<String,String> where=new HashMap<String,String>();		
		where.put("u_id", map.get("u_id"));	
		map.remove("u_id");
		int row=UsersDao.update(map,where);
		if(row>0)
			flag=true;
		return flag;	
	}
	public boolean doReg(Map<String,String[]> params){
		boolean flag=false;
		Map<String,String> map=ConvertUtil.convertMap(params);
		int row=UsersDao.insert(map);
		if(row>0){
			flag=true;
		}
		//System.out.println(flag);
		return flag;
	}
}
