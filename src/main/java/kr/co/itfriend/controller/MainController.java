
package kr.co.itfriend.controller;
  
  import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import
 org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import kr.co.itfriend.beans.BoardBean;
import kr.co.itfriend.beans.BookRankingVo;
import kr.co.itfriend.beans.NBQABean;
import kr.co.itfriend.mapper.BookRankingMapper;


  
  @Controller public class MainController {
  
	  @Autowired
	  BookRankingMapper bookRankingMapper;
	  
	  
		@GetMapping("/MAIN/TOPBOOK/{TB_NO}")
		public String topbook(@PathVariable(value = "TB_NO") String TB_NO, Model model) {
			BookRankingVo topbookinfo=	bookRankingMapper.getTBookInfo(TB_NO);
			model.addAttribute("topbookinfo",topbookinfo);
			return "MAIN/TOPBOOK";
			}
		

  }
  