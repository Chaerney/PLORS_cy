package kr.co.itfriend.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.itfriend.beans.NBQABean;
import kr.co.itfriend.beans.ReplyBean;
import kr.co.itfriend.mapper.BoardMapper;
import kr.co.itfriend.mapper.ReplyMapper;


@Repository
public class ReplyDao {

	@Autowired
	private ReplyMapper replyMapper;

	public List<ReplyBean> list(int nbqa_no) throws Exception {

		return replyMapper.list(nbqa_no);
	}

	public void write(ReplyBean replyBean) throws Exception {

		replyMapper.write(replyBean);
	}

	public void modify(ReplyBean replyBean) throws Exception {

		replyMapper.modify(replyBean);
	}

	public void delete(int rp_no) throws Exception {

		replyMapper.delete(rp_no);
	}
	
	
}
