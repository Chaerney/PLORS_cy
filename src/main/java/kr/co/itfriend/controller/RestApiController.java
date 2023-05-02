package kr.co.itfriend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import kr.co.itfriend.service.UserService;



@RestController
public class RestApiController {

	@Autowired
	private UserService userService;
	
	@GetMapping("/MYPAGE/checkUserIdExist/{mb_id}")
	public String checkUserIdExist(@PathVariable String mb_id) {
		
		boolean chk=userService.checkUserIdExist(mb_id);
		
		return chk+""; //jsp(X) 데이터(true/false)를 넘김
	}
	
	
}
