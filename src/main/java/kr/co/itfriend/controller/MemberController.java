package kr.co.itfriend.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.itfriend.beans.UserBean;
import kr.co.itfriend.service.UserService;
import kr.co.itfriend.validator.UserValidator;



@Controller
@RequestMapping("/MYPAGE")
public class MemberController {
	
	@Autowired
	private UserService userService;
	
	@Resource(name="loginUserBean")
	private UserBean loginUserBean;
	
	@GetMapping("/login")
	public String login(@ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean,
						@RequestParam(value="fail", defaultValue="false") boolean fail, Model model) {
		model.addAttribute("fail",fail);
		return "MYPAGE/login";
	}
	
	@PostMapping("/login_pro")
	public String login_pro(@Valid @ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean, BindingResult result, HttpSession session) {
		
		if(result.hasErrors()) {
			return "MYPAGE/login";
		}
		
		userService.getLoginUserInfo(tempLoginUserBean);
		
		if(loginUserBean.isUserLogin()==true) {
			  userService.getLoginUserInfo(tempLoginUserBean);
		    session.setAttribute("loginUserBean", loginUserBean);
			return "MYPAGE/login_success";
		}else {			
			return "MYPAGE/login_fail";
		}
	}
	
	@GetMapping("/NewAccount")
	public String NewAccount(@ModelAttribute("joinUserBean") UserBean joinUserBean) {
		return "MYPAGE/NewAccount";
	}
	
	@PostMapping("/NewAccount_pro")
	private String NewAccount_pro(@Valid @ModelAttribute("joinUserBean") UserBean joinUserBean, BindingResult result) {
		
		if(result.hasErrors()) {
			System.out.println("error occured >>> : ");
			for(ObjectError error : result.getAllErrors()) {
				System.out.println(error);
			}
			return "MYPAGE/NewAccount";
		}
		System.out.println("userService not error >>> : ");
		userService.addUserInfo(joinUserBean);
		
		return "MYPAGE/join_success";
	}
	
	@GetMapping("/modify")
	public String modify(@ModelAttribute("modifyUserBean") UserBean modifyUserBean) {
		userService.getModifyUserInfo(modifyUserBean);
		return "MYPAGE/modify";
	}
	
	@PostMapping("/modify_pro")
	public String modify_pro(@Valid @ModelAttribute("modifyUserBean") UserBean modifyUserBean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "MYPAGE/modify";
		}
		
		userService.modifyUserInfo(modifyUserBean);
		
		return "MYPAGE/modify_success";
	}
	
	@GetMapping("/logout")
	public String logout() {
		
		loginUserBean.setUserLogin(false);
		
		return "MYPAGE/logout";
	}
	
	@GetMapping("/not_login")
	public String not_login() {
		
		return "MYPAGE/not_login";
	}
	//비밀번호 찾기
	  @RequestMapping(value = "/find_pw", method = { RequestMethod.GET, RequestMethod.POST })
	   public String find(@ModelAttribute("findUserBean") UserBean findUserBean) {
	      return "MYPAGE/find_pw";
	   }
	   
	   @RequestMapping(value = "/find_pw_pro", method = { RequestMethod.GET, RequestMethod.POST })
	   public String find_pro(@ModelAttribute("findUserBean") UserBean findUserBean, BindingResult result,
	         Model model) {
	      

	      if(result.hasErrors()) {
	         return "MYPAGE/find_false";
	      }
	      
	      String mb_pw = userService.findUserPw(findUserBean);
	      
	      
	      model.addAttribute("mb_pw",mb_pw);
	   
	      
	      return "MYPAGE/find_success";
	   }
	   
	   
	// 아이디 찾기
	   @RequestMapping(value = "/find_id", method = { RequestMethod.GET, RequestMethod.POST })
	   public String find_id(@ModelAttribute("findUserBean") UserBean findUserBean) {
	      return "MYPAGE/find_id";
	   }
	   
	   
	   @RequestMapping(value = "/find_id_pro", method = { RequestMethod.GET, RequestMethod.POST })
	   public String find_id_pro(@ModelAttribute("findUserBean") UserBean findUserBean, BindingResult result, Model model
	         ) {
	      
	      if(result.hasErrors()) {
	         return "MYPAGE/find_false";
	      }
	      
	      String mb_id = userService.findUserId(findUserBean);
	      model.addAttribute("mb_id",mb_id);
	      System.out.println(mb_id);
	      
	      
	      return "MYPAGE/find_success_id";
	   }
	   

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		UserValidator validator=new UserValidator();
		binder.addValidators(validator);
	}
	
	@GetMapping("/nopage")
	public String handleNoPageRequest() {
	    return "MYPAGE/nopage"; 
	}
 

}
