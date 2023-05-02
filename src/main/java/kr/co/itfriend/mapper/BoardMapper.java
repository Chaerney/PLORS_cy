package kr.co.itfriend.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import kr.co.itfriend.beans.NBQABean;

public interface BoardMapper {
	//sql
	
	@SelectKey(statement = "select content_seq.nextval from dual", keyProperty = "nbqa_no", before = true, resultType = int.class)
	@Insert("insert into nbqa(nbqa_no, mb_no, nbqa_title, nbqa_content, "
			+ "nbqa_file, nbqa_click, nbqa_date, nbqa_board_no) "
			+ "values (content_seq.nextval, #{mb_no}, #{nbqa_title}, #{nbqa_content}, #{nbqa_file}, "
			+ "click_seq.nextval, systimestamp, #{nbqa_board_no})")
	void addContentInfo(NBQABean writeContentBean);
	
	@Select("select board_name "
			+ "from board "
			+ "where board_id=#{board_id}")
	String getBoardName(int board_id);
	
	@Select("select a1.nbqa_no, a1.nbqa_title, "
			+ "a2.mb_id, "
			+ "to_char(a1.nbqa_date,'yyyy-mm-dd') as nbqa_date "
			+ "from nbqa a1, member a2 "
			+ "where a1.mb_no=a2.mb_no "
			+ "and a1.nbqa_board_no=#{board_id} "
			+ "order by a1.nbqa_no desc")
	List<NBQABean> getContentList(int board_id, RowBounds rowBounds);
	
	@Select("select a2.mb_id, "
			+ "to_char(a1.nbqa_date,'yyyy-mm-dd') as nbqa_date, "
			+ "a1.nbqa_title, a1.nbqa_content, a1.nbqa_file, a1.mb_no "
			+ "from nbqa a1, member a2 "
			+ "where a1.mb_no=a2.mb_no "
			+ "and a1.nbqa_no=#{nbqa_no}")
	NBQABean getContentInfo(int nbqa_no);
	
	@Update("update nbqa set nbqa_title=#{nbqa_title}, nbqa_content=#{nbqa_content}, nbqa_file=#{nbqa_file, jdbcType=VARCHAR} "
			+ "where nbqa_no=#{nbqa_no}")
	void modifyContentInfo(NBQABean modifyContentBean);
	
	@Delete("delete from nbqa where nbqa_no=#{nbqa_no}")
	public void deleteContentInfo(int nbqa_no);
	
	@Select("select count(*) from nbqa where nbqa_board_no = #{nbqa_board_no}")
	int getContentCnt(int nbqa_board_no);
	
	//조회수 증가
	@Update("update nbqa set nbqa_click=nbqa_click+1 where nbqa_no=#{nbqa_no}")
	void boardClickUpdate(int nbqa_click);
	
}
