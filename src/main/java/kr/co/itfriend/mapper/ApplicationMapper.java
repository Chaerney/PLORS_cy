package kr.co.itfriend.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.session.RowBounds;

import kr.co.itfriend.beans.ApplicationBean;

public interface ApplicationMapper {

	@Insert("insert into application(ap_no, mb_no, lb_no, ap_date, ap_bookname, ap_author, ap_publisher, ap_isbn) "
			+ "values (application_seq.nextval, #{mb_no}, 1, systimestamp, #{ap_bookname}, #{ap_author}, #{ap_publisher}, #{ap_isbn})")
	void addApplicationInfo(ApplicationBean insertInfoBean);
	
	@Select("select a1.ap_no, a1.ap_isbn, a2.mb_id, to_char(a1.ap_date, 'yyyy-mm-dd') as ap_date "
			+ "from application a1, member a2 "
			+ "where a1.mb_no=a2.mb_no "
			+ "order by a1.ap_no desc")
	List<ApplicationBean> getApplicationList(RowBounds rowBounds);
	
	@Select("select a1.ap_no, a1.ap_isbn, a2.mb_id, to_char(a1.ap_date, 'yyyy-mm-dd') as ap_date, a3.lb_name "
			+ "from application a1, member a2, library a3 "
			+ "where a1.mb_no=a2.mb_no "
			+ "and a1.lb_no=a3.lb_no "
			+ "and a1.ap_no=#{ap_no}")
	ApplicationBean getApplicationInfo(int ap_no);
	
	@Delete("delete from application where ap_no=#{ap_no}")
	public void deleteApplicationInfo(int ap_no);
	
	@Select("select count(*) from application")
	int getContentCnt();
	
	
}
