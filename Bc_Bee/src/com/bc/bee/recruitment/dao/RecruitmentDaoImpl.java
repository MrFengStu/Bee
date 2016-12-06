package com.bc.bee.recruitment.dao;

import com.bc.bee.entity.Delivery;
import com.bc.bee.entity.RecInfo;

 
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.framework.BaseDao;

@Repository 
public class RecruitmentDaoImpl extends BaseDao<RecInfo, Integer> {



	public void saveRecInfo(RecInfo r){
		try{
			this.save(r);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	
	public List<String> findTime(Integer PUId) {

			//List<RecInfo> list = null;
			List<String> list = new ArrayList<String>();
			List<Map<String, Object>> temp = null;
			try {
				Integer[] value = new Integer[1];
				value[0] = new Integer(PUId);
				
				Date date=new Date();
				DateFormat format=new SimpleDateFormat("yyyy-MM-dd");
				String time=format.format(date);
				
				
				temp = this.findBySql("select ReTime from recinfo where PUId = ?",value);
				 
				
				for(int i=0;i<temp.size();i++){
					
					
					String temptime = transMapToString(temp.get(i)).substring(7, 17);
					 
					if(temptime.equalsIgnoreCase(time)){
						 
						list.add(temptime);
					 
					}
					
				}
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return list;
		
	}
	
	
	public static String transMapToString(Map map){  
		  java.util.Map.Entry entry;  
		  StringBuffer sb = new StringBuffer();  
		  for(Iterator iterator = map.entrySet().iterator(); iterator.hasNext();)  
		  {  
		    entry = (java.util.Map.Entry)iterator.next();  
		      sb.append(entry.getKey().toString()).append( "'" ).append(null==entry.getValue()?"":  
		      entry.getValue().toString()).append (iterator.hasNext() ? "^" : "");  
		  }  
		  return sb.toString();  
		}  
	
	

}
