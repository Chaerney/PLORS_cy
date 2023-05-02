package kr.co.itfriend.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import kr.co.itfriend.beans.ApplicationBean;
import kr.co.itfriend.beans.PageBean;
import kr.co.itfriend.beans.UserBean;
import kr.co.itfriend.dao.ApplicationDao;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class ApplicationService {

	@Autowired
	private ApplicationDao applicationDao;
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
	@Value("${page.listcnt}")
	private int page_listcnt;

	@Value("${page.paginationcnt}")
	private int page_paginationcnt;
	
	public void addApplicationInfo(ApplicationBean insertInfoBean) {
		
		insertInfoBean.setMb_no(loginUserBean.getMb_no());
		applicationDao.addApplicationInfo(insertInfoBean);
		
	}
	
	public List<ApplicationBean> getApplicationList(int page) {
		
		int start = (page - 1) * page_listcnt;
		RowBounds rowBounds = new RowBounds(start, page_listcnt);
		
		return applicationDao.getApplicationList(rowBounds);
				
	}
	
	public ApplicationBean getApplicationInfo(int ap_no) {
		return applicationDao.getApplicationInfo(ap_no);
	}
	
	public void deleteApplicationInfo(int ap_no) {
		applicationDao.deleteApplicationInfo(ap_no);
	}
	
	public PageBean getContentCnt(int currentPage) {
		//전체글의 갯수
		int content_cnt = applicationDao.getContentCnt();
		
		PageBean pageBean = new PageBean(content_cnt, currentPage, page_listcnt, page_paginationcnt);
		
		return pageBean;
	}
	
}
