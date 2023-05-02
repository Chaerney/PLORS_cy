package kr.co.itfriend.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.itfriend.beans.UserBean;
import kr.co.itfriend.mapper.MemberMapper;


@Repository
public class UserDao {

	@Autowired
	private MemberMapper userMapper;
	
	public String checkUserIdExist(String mb_id) {
		return userMapper.checkUserIdExist(mb_id);
	}
	
	public void addUserInfo(UserBean joinUserBean) {
		userMapper.addUserInfo(joinUserBean);
	}
	
	public UserBean getLoginUserInfo(UserBean tempLoginUserBean) {
		return userMapper.getLoginUserInfo(tempLoginUserBean);
	}
	
	public UserBean getModifyUserInfo(int mb_no) {
		return userMapper.getModifyUserInfo(mb_no);
	}
	
	public void modifyUserInfo(UserBean modifyUserBean) {
		userMapper.modifyUserInfo(modifyUserBean);
	}

	//비밀번호 찾기
	 public String findUserPw(UserBean findUserBean) {
	     return userMapper.findUserPw(findUserBean);
	 }
	 
	 // 아이디 찾기
	 public String findUserId(UserBean findUserBean) {
	    return userMapper.findUserId(findUserBean);
	 }
	
	
}
