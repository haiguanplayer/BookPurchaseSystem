package com.neu.service;

import java.util.List;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.InputStream;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.neu.dao.UpdateDao;
import com.neu.dao.selectviewDao;
import com.neu.util.ConvertUtil;
import com.neu.dao.UpdateDao;
import com.neu.util.ConvertUtil;

public class UpdateBookService {
	private UpdateDao updateDao;
	private selectviewDao selectviewdao;
	
	public UpdateBookService(){
		updateDao=new UpdateDao();
	}/*
	//根据读入的文件对数据库进行插入
	public boolean doSave(File file){
		String[] cols={"bid","bname","bwriter","bstornow"};
		boolean flag=false;
		try {
			Reader r=new FileReader(file);
			BufferedReader br=new BufferedReader(r);
			String str=br.readLine();
			while(str!=null){
				String[] values=str.split(",");
				Map<String,String> map=new HashMap<String,String>();
				for(int i=0;i<cols.length;i++){
					map.put(cols[i], values[i]);
				}
				updateDao.insert(map);
				str=br.readLine();
			}
			flag=true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return flag;
	}*/
	//根据读入的文件对数据库进行更新
	public boolean doUpdate(File file){
		boolean flag=false;
		try {
			Reader r=new FileReader(file);
			BufferedReader br=new BufferedReader(r);
			String str=br.readLine();
			while(str!=null){
				String[] values=str.split(",");
				Map<String,String> map=new HashMap<String,String>();
				Map<String,String> where=new HashMap<String,String>();
				map.put("bstornow", values[1]);
				where.put("bid", values[0]);
				updateDao.update(map,where);
				str=br.readLine();
			}
			flag=true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return flag;
	}
	public List<Map<String,String>> findByParams(Map<String,String[]> params){
		List<Map<String,String>> list=null;
		Map<String,String> map=ConvertUtil.convertMap(params);
		list=selectviewdao.search(map);
		return list;
	}
	public Map<String,String> findById(Map<String,String[]> params){
		Map<String,String> item=null;
		Map<String,String> map=ConvertUtil.convertMap(params);
		List<Map<String,String>> list=updateDao.search(map);
		if(list.size()>0){
			item=list.get(0);
		}
		return item;
	}
	
	public boolean doUpdate(Map<String, String[]> params){
		boolean flag=false;
		Map<String, String> map=ConvertUtil.convertMap(params);
//		存放 修改语句的条件
		Map<String,String> where=new HashMap<String, String>();
		where.put("bid", map.get("bid"));
//		必须把作为条件的列从map中移除
		map.remove("bid");
		int row=updateDao.update(map, where);
		if(row>0){
			flag=true;
		}
		return flag;
	}
	
}


