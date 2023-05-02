package kr.co.itfriend.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.itfriend.beans.BookBean;
import kr.co.itfriend.beans.ScrollBookBean;

public interface BookMapper {

	@Select("SELECT BK_ISBN "
			+ "FROM (SELECT BK_ISBN, ROWNUM AS RNUM FROM BOOK) "
			+ "WHERE RNUM BETWEEN #{startIndex} AND #{endIndex}")
	public List<BookBean> searchIsbnByIndex(ScrollBookBean scrollBookBean);
	
	@Select("SELECT BK_ISBN, BK_AUTHOR, BK_PUBLISHER, BK_PUBLISHINGDATE, BK_GENRE, BK_TOTALAMOUNT, BK_RENTALAMOUNT, BK_RENTALYN, BK_LOCATION "
			+ "FROM BOOK "
			+ "WHERE BK_ISBN = #{bk_isbn} "
			+ "AND LB_NO = #{lb_no}")
	public BookBean searchBookByIsbn(BookBean bookBean);
}
