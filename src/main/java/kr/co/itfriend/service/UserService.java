package kr.co.itfriend.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.itfriend.beans.UserBean;
import kr.co.itfriend.dao.UserDao;



@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Resource(name="loginUserBean")
	private UserBean loginUserBean; //SessionScope 영역 사용
	
	public boolean checkUserIdExist(String mb_id) {
		String mb_name=userDao.checkUserIdExist(mb_id);
		if(mb_name==null) {
			return true;
		}else {
			return false;
		}
	}
	
	public void addUserInfo(UserBean joinUserBean) {
		userDao.addUserInfo(joinUserBean);
	}
	
	public void getLoginUserInfo(UserBean tempLoginUserBean) {
		UserBean tempLoginUserBean2=userDao.getLoginUserInfo(tempLoginUserBean);
		//가져온 값이 없을시 예외처리
		if(tempLoginUserBean2!=null) {
			loginUserBean.setMb_no(tempLoginUserBean2.getMb_no());
			loginUserBean.setMb_name(tempLoginUserBean2.getMb_name());
			loginUserBean.setMb_ad(tempLoginUserBean2.getMb_ad());
			loginUserBean.setMb_id(tempLoginUserBean2.getMb_id());
			loginUserBean.setMb_pw(tempLoginUserBean2.getMb_pw());
			loginUserBean.setMb_tel(tempLoginUserBean2.getMb_tel());
			loginUserBean.setMb_birthday(tempLoginUserBean2.getMb_birthday());
			loginUserBean.setMb_gender(tempLoginUserBean2.getMb_gender());
			loginUserBean.setMb_addr(tempLoginUserBean2.getMb_addr());
			
			
			loginUserBean.setUserLogin(true);
		}
	}
	
	public void getModifyUserInfo(UserBean modifyUserBean) {
		UserBean tempModifyUserBean=userDao.getModifyUserInfo(loginUserBean.getMb_no());
		modifyUserBean.setMb_id(tempModifyUserBean.getMb_id());
		modifyUserBean.setMb_name(tempModifyUserBean.getMb_name());
		modifyUserBean.setMb_no(tempModifyUserBean.getMb_no());
		modifyUserBean.setMb_birthday(tempModifyUserBean.getMb_birthday());
		modifyUserBean.setMb_tel(tempModifyUserBean.getMb_tel());
		modifyUserBean.setMb_addr(tempModifyUserBean.getMb_addr());
		modifyUserBean.setMb_gender(tempModifyUserBean.getMb_gender());
		modifyUserBean.setMb_ad(tempModifyUserBean.getMb_ad());
	}
	
	public void modifyUserInfo(UserBean modifyUserBean) {
		modifyUserBean.setMb_no(loginUserBean.getMb_no());
		userDao.modifyUserInfo(modifyUserBean);
	}

	public String findUserPw(UserBean findUserBean) {

	      String mb_pw = userDao.findUserPw(findUserBean);
	      
	      loginUserBean.setMb_id(findUserBean.getMb_id());
	      loginUserBean.setMb_tel(findUserBean.getMb_tel());
	      loginUserBean.setMb_pw(findUserBean.getMb_pw());

	      return mb_pw;
	   }
	
	public String findUserId(UserBean findUserBean) {
	      
	      String mb_id = userDao.findUserId(findUserBean);
	      if(mb_id !=null) {
	    	  findUserBean.setMb_id(mb_id);
	      }else {
	    	  findUserBean.setMb_id("찾으시는 정보의 아이디가 없습니다.");
	      }
	      
	      return mb_id;
	   }
	
	



}
