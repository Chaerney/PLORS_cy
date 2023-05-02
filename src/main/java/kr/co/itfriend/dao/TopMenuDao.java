package kr.co.itfriend.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import kr.co.itfriend.beans.BoardBean;
import kr.co.itfriend.mapper.TopMenuMapper;


@Repository
public class TopMenuDao {

	@Autowired
	private TopMenuMapper topMenuMapper;
	
	public List<BoardBean> getTopMenuList() {
		
		List<BoardBean> topMenuList = topMenuMapper.getTopMenuList();
		
		return topMenuList;
	}

	
	
}
