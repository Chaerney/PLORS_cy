package kr.co.itfriend.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.itfriend.beans.UserBean;

public class LeftMenuInterceptor implements HandlerInterceptor{
	
	private UserBean loginUserBean;
	
	public LeftMenuInterceptor(UserBean loginUserBean) {
		this.loginUserBean=loginUserBean;
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		request.setAttribute("loginUserBean", loginUserBean);
		
		return true;
	}

}
