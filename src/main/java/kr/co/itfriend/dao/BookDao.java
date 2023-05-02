package kr.co.itfriend.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.itfriend.beans.BookBean;
import kr.co.itfriend.beans.ScrollBookBean;
import kr.co.itfriend.mapper.BookMapper;

@Repository
public class BookDao {

	@Autowired
	BookMapper bookMapper;
	
	@Resource(name = "scrollBookBean")
	ScrollBookBean scrollBookBean;
	
	public void searchBookByIndex() {
		
		List<BookBean> isbnList = bookMapper.searchIsbnByIndex(scrollBookBean);
		scrollBookBean.setStartIndex(scrollBookBean.getStartIndex() + 10);
		scrollBookBean.setEndIndex(scrollBookBean.getEndIndex() + 10);
		
		if(isbnList.size() > 0)
			scrollBookBean.setBooklist(new ArrayList<BookBean>());
		
		for(BookBean book : isbnList) {
			BookBean searchedBook = bookMapper.searchBookByIsbn(book);
			scrollBookBean.getBooklist().add(searchedBook);
		}
	}
}
