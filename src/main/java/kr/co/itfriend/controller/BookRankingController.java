package kr.co.itfriend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import kr.co.itfriend.beans.BookRankingVo;
import kr.co.itfriend.mapper.BookRankingMapper;

@Controller
public class BookRankingController {

	@Autowired
	private BookRankingMapper bookRankingMapper;
	
	@GetMapping("/main")
	public String index(Model model) {
		List<BookRankingVo> BookRanking=bookRankingMapper.getRanking();
		model.addAttribute("bookRanking", BookRanking);
		return "/MAIN/main";
	}
	
	@GetMapping("/MAIN/bookranking")
	public String index2(Model model2) {
		List<BookRankingVo> bookIsbn = bookRankingMapper.getTBookIsbn();
		model2.addAttribute("bookIsbn",bookIsbn);
		return "/MAIN/bookranking";
	}
	

		
	
	

	
}
