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

import kr.co.itfriend.beans.ApplicationBean;
import kr.co.itfriend.beans.NBQABean;
import kr.co.itfriend.beans.PageBean;
import kr.co.itfriend.beans.UserBean;
import kr.co.itfriend.service.ApplicationService;

@Controller
@RequestMapping("/NBQA")
public class ApplicationController {

	@Autowired
	private ApplicationService applicationService;

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	
	@GetMapping("/application")
	public String application() {
		return "NBQA/application";
	}

	@GetMapping("/bookApplication")
	public String bookApplication(@ModelAttribute("insertInfoBean") ApplicationBean insertInfoBean) {
		return "NBQA/bookApplication";
	}

	@PostMapping("/application_pro")
	public String application_pro(@Valid @ModelAttribute("insertInfoBean") ApplicationBean insertInfoBean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "NBQA/bookApplication";
		}
		
		applicationService.addApplicationInfo(insertInfoBean);
		
		return "NBQA/bookApplication_success";
	}
	
	@GetMapping("/application_list_admin")
	public String application_list_admin(@RequestParam(value = "page", defaultValue = "1") int page, Model model) {
		
		List<ApplicationBean> applicationList = applicationService.getApplicationList(page);
		model.addAttribute("applicationList", applicationList);
		
		PageBean pageBean = applicationService.getContentCnt(page);
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("page", page);
		
		return "NBQA/application_list_admin";
	}
	
	@GetMapping("/application_read")
	public String application_read(@RequestParam("ap_no") int ap_no,
								   @RequestParam(value = "page", defaultValue = "1") int page, Model model) {
		model.addAttribute("ap_no", ap_no);
		
		//게시글 상세정보(글쓴이의 이름과 아이디 포함)
		ApplicationBean readContentBean = applicationService.getApplicationInfo(ap_no);
		model.addAttribute("readContentBean", readContentBean);
		
		//로그인 정보
		model.addAttribute("loginUserBean", loginUserBean);
		model.addAttribute("page", page);
		
		return "NBQA/application_read";
	}
	
	@GetMapping("/application_delete")
	public String application_delete(@RequestParam("ap_no") int ap_no, Model model) {
		
		applicationService.deleteApplicationInfo(ap_no);
		
		return "NBQA/application_delete";
	}

}
