package kr.co.itfriend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.itfriend.beans.LibraryBean;
import kr.co.itfriend.dao.LibraryDao;

@Service
public class LibraryService {

	@Autowired
	private LibraryDao libraryDao;
	
	public List<LibraryBean> searchLibraryByAddress(String keyword){
		
		return libraryDao.searchLibraryByAddress(keyword);
	}
	
	public LibraryBean searchLibraryByLnbo(String lbno){
		
		return libraryDao.searchLibraryByLbno(lbno);
	}
	
}
