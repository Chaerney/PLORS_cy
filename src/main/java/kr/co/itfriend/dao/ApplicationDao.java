package kr.co.itfriend.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.itfriend.beans.ApplicationBean;
import kr.co.itfriend.mapper.ApplicationMapper;

@Repository
public class ApplicationDao {
	
	@Autowired
	private ApplicationMapper applicationMapper;
	
	public void addApplicationInfo(ApplicationBean insertInfoBean) {
		
		applicationMapper.addApplicationInfo(insertInfoBean);
		
	}
	
	public List<ApplicationBean> getApplicationList(RowBounds rowBounds) {
		return applicationMapper.getApplicationList(rowBounds);
	}
	
	public ApplicationBean getApplicationInfo(int ap_no) {
		return applicationMapper.getApplicationInfo(ap_no);
	}
	
	public void deleteApplicationInfo(int ap_no) {
		applicationMapper.deleteApplicationInfo(ap_no);
	}
	
	public int getContentCnt() {
		return applicationMapper.getContentCnt();
	}

}
