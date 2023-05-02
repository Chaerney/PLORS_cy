package kr.co.itfriend.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.itfriend.beans.ScrollBookBean;
import kr.co.itfriend.dao.BookDao;

@Service
public class BookService {

	@Autowired
	private BookDao bookDao;
	
	@Resource(name = "scrollBookBean")
	private ScrollBookBean scrollBookBean;
	
	public void searchBookByLbno(int lbno) {
		
		scrollBookBean.setLb_no(lbno);
		bookDao.searchBookByIndex();
	}
}
