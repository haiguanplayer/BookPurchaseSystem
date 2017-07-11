package com.neu.service;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.catalina.util.Conversions;

import com.neu.dao.booksDao;
import com.neu.util.ConvertUtil;

public class bookcataService {
	private booksDao Selectbook;
	
	public bookcataService(){
		this.Selectbook = new booksDao();
	}
	
	
	public List<Map<String,String>> findByParams(Map<String,String[]> params){
		List<Map<String,String>> list=null;
		Map<String,String> map=ConvertUtil.convertMap(params);
		list=Selectbook.search(map);
		return list;
	}
}
