package kr.co.itfriend.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.itfriend.beans.ReplyBean;
import kr.co.itfriend.beans.UserBean;
import kr.co.itfriend.service.ReplyService;

@Controller
@RequestMapping("/NBQA")
public class ReplyController {

	@Autowired
	private ReplyService replyService;
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
	//목록
	
	//작성 
	@RequestMapping(value = "/replyWrite", method = RequestMethod.POST)
	public String posttWirte(ReplyBean replyBean) throws Exception {
			
		replyBean.setMb_no(loginUserBean.getMb_no());
		System.out.println(replyBean.getNbqa_no());
		System.out.println(replyBean.getMb_no());
		System.out.println(replyBean.getRp_content());
		replyService.write(replyBean);
		
		return "redirect:/NBQA/read?board_id="+replyBean.getBoard_id()+ "&nbqa_no=" + replyBean.getNbqa_no();
		
	}
	//수정
	
	//삭제
	
	/*
	@RequestMapping("/list")
	@ResponseBody
	private List<ReplyBean> replyList(int nbqa_no) {
		return replyService.commentList(nbqa_no);
	}

	@RequestMapping("/insert") // 댓글 작성
	@ResponseBody
	private int replyServiceInsert(@RequestParam int nbqa_no, @RequestParam String rp_content) {

		ReplyBean replybean = new ReplyBean();
		replybean.setNbqa_no(nbqa_no);
		replybean.setRp_content(rp_content);
		// 로그인 기능을 구현했거나 따로 댓글 작성자를 입력받는 폼이 있다면 입력 받아온 값으로 사용하면 됩니다. 저는 따로 폼을 구현하지
		// 않았기때문에 임시로 "test"라는 값을 입력해놨습니다.
		replybean.setMb_id(loginUserBean.getMb_id());

		return replyService.commentInsert(replybean);
	}
	
	@RequestMapping("/update") //댓글 수정  
    @ResponseBody
    private int commentServiceUpdateProc(@RequestParam int rp_no, @RequestParam String rp_content) {
        
		ReplyBean replybean = new ReplyBean();
		replybean.setRp_no(rp_no);
		replybean.setRp_content(rp_content);
        
        return replyService.commentUpdate(replybean);
    }
    
    @RequestMapping("/delete/{rp_no}") //댓글 삭제  
    @ResponseBody
    private int mCommentServiceDelete(@PathVariable int rp_no) {
        
        return replyService.commentDelete(rp_no);
    }
	
	*/
	
	
	
	
	
	
}
