package kr.co.itfriend.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import kr.co.itfriend.beans.UserBean;


public class UserValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		
		return UserBean.class.isAssignableFrom(clazz);
		
	}

	@Override
	public void validate(Object target, Errors errors) {
		
		UserBean userBean=(UserBean)target;
		
		String beanName=errors.getObjectName();
		
		if (beanName.equals("joinUserBean") || beanName.equals("joinUserBean")) {
		
			if(userBean.getMb_pw().equals(userBean.getMb_pw2())==false) {
				errors.rejectValue("mb_pw", "NoEquals");
				errors.rejectValue("mb_pw2", "NoEquals");
			}
		}


		if (beanName.equals("modifyUserBean") || beanName.equals("modifyUserBean")) {
		
			if(userBean.getMb_pw().equals(userBean.getMb_pw2())==false) {
				errors.rejectValue("mb_pw", "NoEquals");
				errors.rejectValue("mb_pw2", "NoEquals");
			}
		}
		
		if(beanName.equals("joinUserBean")){
			if (userBean.isUserIdExist() == false) {
				errors.rejectValue("mb_id", "DontCheckUserIdExist");
			}
		}
		
	}
	
}
