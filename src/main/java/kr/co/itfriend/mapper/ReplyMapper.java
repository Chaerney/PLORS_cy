package kr.co.itfriend.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import kr.co.itfriend.beans.ReplyBean;

public interface ReplyMapper {

	//rp_no, nbqa_no, mb_no, rp_content, rp_date
	
	//댓글 개수
	//@Select("select count(*) from reply")
	//public int commentCount();
	
	//댓글 목록
	@Select("select a1.rp_no, a2.nbqa_no, a3.mb_id, a1.rp_content, to_char(a1.rp_date, 'yyyy-mm-dd HH24:MI:ss') as rp_date "
			+ "from reply a1, nbqa a2, member a3 "
			+ "where a1.mb_no=a3.mb_no "
			+ "and a1.nbqa_no=a2.nbqa_no "
			+ "and a1.nbqa_no=#{nbqa_no}")
	public List<ReplyBean> list(int nbqa_no) throws Exception;
	
	//댓글 작성
	@Insert("insert into reply (rp_no, nbqa_no, mb_no, rp_content, rp_date) "
			+ "values (reply_seq.nextval, #{nbqa_no}, #{mb_no}, #{rp_content}, systimestamp)")
	public void write(ReplyBean replyBean) throws Exception;
	
	//댓글 수정
	@Update("update reply set rp_content=#{rp_content} where rp_no=#{rp_no}")
    public void modify(ReplyBean replyBean) throws Exception;
	
    // 댓글 삭제
	@Delete("delete from reply where rp_no=#{rp_no}")
    public void delete(int rp_no) throws Exception;
	
	/*
	//댓글 삽입
	@SelectKey(statement = "select reply_seq.nextval from dual", keyProperty = "rp_no", before = true, resultType = int.class)
	@Insert("insert into reply (rp_no, nbqa_no, mb_no, rp_content, rp_date) "
			+ "values (reply_seq.nextval, nbqa_no=#{nbqa_no}, mb_no=#{mb_no}, rp_content=#{rp_content}, systimestamp)")
	void addReplyInfo(ReplyBean writeReplyBean);
	
	//댓글 리스트
	@Select("select a1.rp_no, a2.nbqa_no, a3.mb_id, a1.rp_content, to_char(a1.rp_date, 'yyyy-mm-dd') as rp_date "
			+ "from reply a1, nbqa a2, member a3 "
			+ "where a1.mb_no=a3.mb_no "
			+ "and a1.nbqa_no=a2.nbqa_no "
			+ "and a1.rp_no=#{rp_no}")
	List<ReplyBean> getReplyList();
	
	
	//댓글 조회
	@Select("select a1.rp_no, a2.nbqa_no, a3.mb_id, a1.rp_content, to_char(a1.rp_date, 'yyyy-mm-dd') as rp_date "
			+ "from reply a1, nbqa a2, member a3 "
			+ "where a1.mb_no=a3.mb_no "
			+ "and a1.nbqa_no=a2.nbqa_no "
			+ "and a1.rp_no=#{rp_no}")
	ReplyBean getReplyInfo(int rp_no);
	
	*/
	
}
