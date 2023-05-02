package kr.co.itfriend.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.annotation.SessionScope;

import kr.co.itfriend.beans.ScrollBookBean;
import kr.co.itfriend.beans.UserBean;

@Configuration
public class RootAppContext {

	@Bean("scrollBookBean")
	@SessionScope
	public ScrollBookBean scrollBookBean() {
		return new ScrollBookBean();
	}

		
		@Bean("loginUserBean")
		@SessionScope
		public UserBean loginUserBean() {
			return new UserBean();
		}

}
