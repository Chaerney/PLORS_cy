package kr.co.itfriend.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.itfriend.beans.NBQABean;
import kr.co.itfriend.beans.PageBean;
import kr.co.itfriend.beans.UserBean;
import kr.co.itfriend.service.ApplicationService;
import kr.co.itfriend.service.BoardService;


@Controller
@RequestMapping("/NBQA")
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
	@GetMapping("/board")
	public String board(@RequestParam("board_id") int board_id, 
						@RequestParam(value = "page", defaultValue = "1") int page, Model model){
		//게시판 고유 번호
		model.addAttribute("board_id", board_id);		
		//게시판이름
		String board_name = boardService.getBoardName(board_id);
		model.addAttribute("board_name", board_name);		
		//게시글
		List<NBQABean> contentList= boardService.getContentList(board_id, page);
		model.addAttribute("contentList", contentList);
		
		PageBean pageBean = boardService.getContentCnt(board_id, page);
		
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("page", page);
		
		return "NBQA/board";
	}
	
	@GetMapping("/read")
	public String read(@RequestParam("board_id") int board_id, 
					   @RequestParam("nbqa_no") int nbqa_no,
					   @RequestParam(value = "page", defaultValue = "1") int page, Model model) {
				
		model.addAttribute("board_id", board_id);
		model.addAttribute("nbqa_no", nbqa_no);
		//게시글 상세정보(글쓴이의 이름과 아이디 포함)
		NBQABean readContentBean = boardService.getContentInfo(nbqa_no);
		model.addAttribute("readContentBean", readContentBean);
		//로그인 정보
		model.addAttribute("loginUserBean", loginUserBean);
		model.addAttribute("page", page);
		
		int nbqa_click = 0;
		boardService.boardClickUpdate(nbqa_no);
		model.addAttribute("nbqa_click", nbqa_click);
		
		return "NBQA/read";
	}	
	
	@GetMapping("/write")
	public String write(@ModelAttribute("writeContentBean") NBQABean writeContentBean,
						@RequestParam("board_id") int board_id) {
		
		writeContentBean.setNbqa_board_no(board_id);
		
		return "NBQA/write";
	}
	
	@PostMapping("/write_pro")
	public String write_pro(@Valid @ModelAttribute("writeContentBean") NBQABean writeContentBean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "NBQA/write";
		}
		
		boardService.addContentInfo(writeContentBean);
		
		return "NBQA/write_success";
	}
	
	@GetMapping("/not_writer")
	public String not_writer() {		
		return "NBQA/not_writer";
	}
	
	@GetMapping("/modify")
	public String modify(@ModelAttribute("board_id") int board_id, 
						 @ModelAttribute("nbqa_no") int nbqa_no, 
						 @ModelAttribute("modifyContentBean") NBQABean modifyContentBean,
						 @RequestParam("page") int page, Model model) {
		
		model.addAttribute("board_id", board_id);
		model.addAttribute("nbqa_no", nbqa_no);
		model.addAttribute("page", page);
		
		//게시글 하나의 정보
		NBQABean tempContentBean = boardService.getContentInfo(nbqa_no);
		
		modifyContentBean.setMb_id(tempContentBean.getMb_id());
		modifyContentBean.setNbqa_date(tempContentBean.getNbqa_date());
		modifyContentBean.setNbqa_title(tempContentBean.getNbqa_title());
		modifyContentBean.setNbqa_content(tempContentBean.getNbqa_content());
		modifyContentBean.setNbqa_file(tempContentBean.getNbqa_file());
		modifyContentBean.setMb_no(tempContentBean.getMb_no());
		
		modifyContentBean.setNbqa_board_no(board_id); //param값 그대로 가져오기
		modifyContentBean.setNbqa_no(nbqa_no);
		
		return "NBQA/modify";
	}
	
	@PostMapping("/modify_pro")
	public String modify_pro(@Valid @ModelAttribute("modifyContentBean") NBQABean modifyContentBean, 
			 				 @RequestParam("page") int page, Model model, BindingResult result) {
		
		model.addAttribute("page", page);
		
		if(result.hasErrors()) {
			return "NBQA/modify";
		}
		
		boardService.modifyContentInfo(modifyContentBean);
		
		return "NBQA/modify_success";
	}
	
	@GetMapping("/delete")
	public String delete(@RequestParam("board_id") int board_id, 
			 			 @RequestParam("nbqa_no") int nbqa_no, Model model) {
		
		boardService.deleteContentInfo(nbqa_no);
		model.addAttribute("board_id", board_id);
		
		return "NBQA/delete";
	}
	
	
	/*
	@GetMapping("/NBQA/notice")
	public String notice(){
		return "NBQA/notice";
	}
	
	
	
	@GetMapping("/NBQA/q_a") 
	public String q_a(){
		return "NBQA/q_a"; 
	}
	*/ 
	
	
}
