package kr.co.itfriend.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.itfriend.beans.NBQABean;
import kr.co.itfriend.mapper.BoardMapper;

@Repository
public class BoardDao {

	@Autowired
	private BoardMapper boardMapper;
	
	public void addContentInfo(NBQABean writeContentBean) {

		boardMapper.addContentInfo(writeContentBean);
	}
		
	public String getBoardName(int board_id) {
		return boardMapper.getBoardName(board_id);
	}
	
	public List<NBQABean> getContentList(int board_id, RowBounds rowBounds) {		
		return boardMapper.getContentList(board_id, rowBounds);
		
	}
	
	public NBQABean getContentInfo(int nbqa_no) {
		return boardMapper.getContentInfo(nbqa_no);
	}
	
	public void modifyContentInfo(NBQABean modifyContentBean) {
		boardMapper.modifyContentInfo(modifyContentBean);
	}
	
	public void deleteContentInfo(int nbqa_no) {
		boardMapper.deleteContentInfo(nbqa_no);
	}
	
	public int getContentCnt(int nbqa_board_no) {
		return boardMapper.getContentCnt(nbqa_board_no);
	}
	
	//조회수 증가
	public void boardClickUpdate(int nbqa_click) {
		boardMapper.boardClickUpdate(nbqa_click);
	}
	
}
