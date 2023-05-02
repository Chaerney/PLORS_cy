package kr.co.itfriend.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.itfriend.beans.UserBean;


public interface MemberMapper {
	
	@Select("select mb_name "
			+ "from member "
			+ "where mb_id=#{mb_id}")
	String checkUserIdExist(String mb_id);

	@Insert("insert into member(mb_no,mb_name,mb_id,mb_pw,mb_tel,mb_birthday,mb_gender,mb_addr,mb_money,mb_ad) values(no_seq.nextval, #{mb_name}, #{mb_id}, #{mb_pw},#{mb_tel},TO_DATE(#{mb_birthday}),#{mb_gender},#{mb_addr},0,#{mb_ad})")
	void addUserInfo(UserBean joinUserBean);

	@Select("select mb_no, mb_name, mb_ad "
			+ "from member "
			+ "where mb_id=#{mb_id} and mb_pw=#{mb_pw}")
	UserBean getLoginUserInfo(UserBean tempLoginUserBean);
	
	@Select("select mb_id, mb_name, mb_birthday, mb_gender, mb_tel, mb_addr, mb_ad "
			+ "from member "
			+ "where mb_no=#{mb_no}")
	UserBean getModifyUserInfo(int mb_no);

	@Update("update member "
			+ "set mb_pw=#{mb_pw} "
			+ "where mb_no=#{mb_no}")
	void modifyUserInfo(UserBean modifyUserBean);
	//비밀번호 가져오기
	@Select("select mb_pw from member where mb_id= #{mb_id} and mb_tel = #{mb_tel}")
	String findUserPw(UserBean findUserBean);
	//아이디 가져오기
	@Select("select mb_id "
	         + "from member "
	         + "where mb_name = #{mb_name} and mb_tel = #{mb_tel}")
	 String findUserId(UserBean findUserBean);
	
}









