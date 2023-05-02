package kr.co.itfriend.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.itfriend.mapper.PointMapper;

@Repository
public class PointDao {
	
	@Autowired
	private PointMapper pointMapper;
	
}
