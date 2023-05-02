package kr.co.itfriend.beans;

import java.util.Date;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class UserBean {

	private int mb_no;
	
	@Size(min=4, max=20)
	@Pattern(regexp="[a-zA-Z0-9]*") 
	private String mb_id;
	
	@Size(min=4, max=20)
	@Pattern(regexp="(?=.*[0-9])(?=.*[a-zA-Z])(?=.*\\W)(?=\\S+$).{8,16}") 
	private String mb_pw;
	
	@Size(min=4, max=20)
	@Pattern(regexp="(?=.*[0-9])(?=.*[a-zA-Z])(?=.*\\W)(?=\\S+$).{8,16}") 
	private String mb_pw2;
	
	@Size(min=2,max=4)
	@Pattern(regexp="[가-힣]*")
	private String mb_name;
	
	private String mb_tel;
	
	private String mb_birthday;
	
	public String getMb_birthday() {
		return mb_birthday;
	}

	public void setMb_birthday(String mb_birthday) {
		this.mb_birthday = mb_birthday;
	}

	private String mb_gender;
	
	private String mb_addr;
	
	private String mb_money;
	
	private Integer mb_ad;
	
	private boolean userIdExist;
	
	private boolean userLogin;
	
	public String getMb_tel() {
		return mb_tel;
	}

	public void setMb_tel(String mb_tel) {
		this.mb_tel = mb_tel;
	}

	

	public String getMb_gender() {
		return mb_gender;
	}

	public void setMb_gender(String mb_gender) {
		this.mb_gender = mb_gender;
	}

	public String getMb_addr() {
		return mb_addr;
	}

	public void setMb_addr(String mb_addr) {
		this.mb_addr = mb_addr;
	}

	public String getMb_money() {
		return mb_money;
	}

	public void setMb_money(String mb_money) {
		this.mb_money = mb_money;
	}


	

	public Integer getMb_ad() {
		return mb_ad;
	}

	public void setMb_ad(Integer mb_ad) {
		this.mb_ad = mb_ad;
	}

	public UserBean(){
		this.userIdExist=false;
		this.userLogin=false;
	}

	public int getMb_no() {
		return mb_no;
	}

	public void setMb_no(int mb_no) {
		this.mb_no = mb_no;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public String getMb_pw() {
		return mb_pw;
	}

	public void setMb_pw(String mb_pw) {
		this.mb_pw = mb_pw;
	}

	public String getMb_pw2() {
		return mb_pw2;
	}

	public boolean isUserIdExist() {
		return userIdExist;
	}

	public void setUserIdExist(boolean userIdExist) {
		this.userIdExist = userIdExist;
	}

	public boolean isUserLogin() {
		return userLogin;
	}

	public void setUserLogin(boolean userLogin) {
		this.userLogin = userLogin;
	}

	public void setMb_pw2(String mb_pw2) {
		this.mb_pw2 = mb_pw2;
	}

	public String getMb_name() {
		return mb_name;
	}

	public void setMb_name(String mb_name) {
		this.mb_name = mb_name;
	}
	
	

	
	
}
