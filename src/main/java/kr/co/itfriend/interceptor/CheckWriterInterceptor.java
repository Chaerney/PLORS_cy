package kr.co.itfriend.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.itfriend.beans.NBQABean;
import kr.co.itfriend.beans.UserBean;
import kr.co.itfriend.service.BoardService;

public class CheckWriterInterceptor implements HandlerInterceptor {
	
	private UserBean loginUserBean;
	private BoardService boardService;
	
	public CheckWriterInterceptor(UserBean loginUserBean, BoardService boardService) {
		this.loginUserBean = loginUserBean;
		this.boardService = boardService;
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//read.jsp에서 주입된 content_idx
		String str1 = request.getParameter("nbqa_no");
		int nbqa_no = Integer.parseInt(str1); //형변환
		//현재 게시글 가져오기
		NBQABean currentNBQABean = boardService.getContentInfo(nbqa_no);
		
		//작성한 사람의 글번호와 로그인한 사람의 글번호가 다르면
		if(currentNBQABean.getMb_no() != loginUserBean.getMb_no()) {
			//경로를 읽어와서
			String contextPath = request.getContextPath();
			//board/not_writer 넘김
			response.sendRedirect(contextPath+"/NBQA/not_writer");
			
			return false;
		}	
		return true;
	}

	
	
}
