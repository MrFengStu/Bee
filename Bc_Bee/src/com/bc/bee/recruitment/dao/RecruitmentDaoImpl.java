package com.bc.bee.recruitment.dao;

import com.bc.bee.entity.RecInfo;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

<<<<<<< HEAD
import javax.servlet.http.HttpSession;

=======
>>>>>>> 7314ee1be915242474e8771eb8ff06c434fc7bfe
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

	
	public List<Map<String, Object>> findTime(Integer PUId) {

			//List<RecInfo> list = null;
			 
			List<Map<String, Object>> temp = null;
			try {
				Integer[] value = new Integer[1];
				value[0] = new Integer(PUId);
				temp = this.findBySql("select ReTime from recinfo where PUId = ?",value);
 
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return temp;
		
	}

}
