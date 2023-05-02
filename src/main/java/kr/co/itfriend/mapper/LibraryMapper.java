package kr.co.itfriend.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.itfriend.beans.LibraryBean;

public interface LibraryMapper {

	@Select("SELECT LB_NO, LB_NAME, LB_LOCATION, LB_TIME, LB_HOLIDAY, LB_TEL, LB_PAGE, LB_LATITUDE, LB_LONGITUDE "
			+ "FROM LIBRARY "
			+ "WHERE LB_LOCATION LIKE '%' || #{keyword} || '%'")
	public List<LibraryBean> searchLibraryByAddress(String keyword);
	
	@Select("SELECT LB_NO, LB_NAME, LB_LOCATION, LB_TIME, LB_HOLIDAY, LB_TEL, LB_PAGE, LB_LATITUDE, LB_LONGITUDE "
			+ "FROM LIBRARY "
			+ "WHERE LB_NO = #{lbno}")
	public LibraryBean searchLibraryByLbno(String lbno);
}
