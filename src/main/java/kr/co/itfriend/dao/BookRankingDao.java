package kr.co.itfriend.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.itfriend.beans.BookRankingVo;
import kr.co.itfriend.mapper.BookRankingMapper;

@Repository
public class BookRankingDao {

	@Autowired
	private BookRankingMapper bookrankingMapper;	
	
	public List<BookRankingVo> getRanking(){
		List<BookRankingVo> bookRankingList=bookrankingMapper.getRanking();
		System.out.println(bookRankingList);
		return bookRankingList;
	}
	
	
	public BookRankingVo getTBookInfo(String TB_NO) {
	 BookRankingVo topbookinfo = bookrankingMapper.getTBookInfo(TB_NO);
	 return topbookinfo;
	}
	
	public List<BookRankingVo> getTBookIsbn(){
		List<BookRankingVo> bookisbn = bookrankingMapper.getTBookIsbn();
		return bookisbn;
		
	}
	
}
