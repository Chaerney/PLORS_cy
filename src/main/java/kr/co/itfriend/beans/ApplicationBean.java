package kr.co.itfriend.beans;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ApplicationBean {
	
	private int ap_no;
	
	private int mb_no;
	private String mb_id;
	
	private int lb_no;
	@NotBlank
	private String lb_name;
	
	private String ap_date;
	
	@NotBlank
	private String ap_bookname;
	
	@NotBlank
	private String ap_author;
	
	@NotBlank
	private String ap_publisher;
	
	@NotNull
	private int ap_isbn;
	
}
