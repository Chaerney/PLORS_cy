package kr.co.itfriend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import kr.co.itfriend.beans.BookRankingVo;
import kr.co.itfriend.mapper.BookRankingMapper;

@Controller
public class SideBarController {

	@Autowired
	BookRankingMapper bookRankingMapper;

	/*
	 * @GetMapping("/MYPAGE/login") public String login() { return "MYPAGE/login"; }
	 */

	@GetMapping("/MYPAGE/MyPage")
	public String mypage() {

		return "MYPAGE/MyPage";
	}

	@GetMapping("/MYPAGE/Change")
	public String mypage_change() {

		return "MYPAGE/Change";
	}

	@GetMapping("/MYPAGE/Mypage_QnA")
	public String mypage_qna() {

		return "MYPAGE/Mypage_QnA";
	}

	@GetMapping("/REVIEW/review")
	public String review() {

		return "REVIEW/review";
	}

	@GetMapping("/RENTAL/deliverlist")
	public String deliverlist() {

		return "RENTAL/deliverlist";
	}

	@GetMapping("/RENTAL/orderlist")
	public String orderlist() {

		return "RENTAL/orderlist";
	}

	@GetMapping("/RENTAL/wishlist")
	public String wishlist() {

		return "RENTAL/wishlist";
	}

	@GetMapping("/MAIN/MainSearchProc")
	public String mainsearchproc() {
		return "MAIN/MainSearchProc";
	}
	
	
	
	
	
	
	/*
	 * @GetMapping("Hyo/bookranking") public String bookranking() {
	 * 
	 * return "Hyo/bookranking"; }
	 */

}