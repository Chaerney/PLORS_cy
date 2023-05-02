package kr.co.itfriend.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.itfriend.beans.LibraryBean;
import kr.co.itfriend.mapper.LibraryMapper;

@Repository
public class LibraryDao {

	@Autowired
	private LibraryMapper libraryMapper;
	
	public List<LibraryBean> searchLibraryByAddress(String keyword){
		
		return libraryMapper.searchLibraryByAddress(keyword);
	}
	
	public LibraryBean searchLibraryByLbno(String lbno){
		
		return libraryMapper.searchLibraryByLbno(lbno);
	}
	
}
