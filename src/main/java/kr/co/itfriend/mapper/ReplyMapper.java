package kr.co.itfriend.mapper;

import org.apache.ibatis.annotations.Select;

public interface ReplyMapper {

	//rp_no, nbqa_no, mb_no, rp_content, rp_date
	@Select("")
	String Reply();
	
}
