package kr.co.itfriend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.itfriend.beans.BoardBean;
import kr.co.itfriend.dao.TopMenuDao;


@Service
public class TopMenuService {

	@Autowired
	private TopMenuDao topMenuDao;
	
	public List<BoardBean> getTopMenuList() {
		
		List<BoardBean> topMenuList = topMenuDao.getTopMenuList();
	
		return topMenuList;
	}


}
