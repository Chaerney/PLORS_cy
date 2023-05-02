package kr.co.itfriend.beans;

import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NBQABean {
	
	private int nbqa_no; //게시물번호
	
	@NotBlank
	private String nbqa_title; //게시물제목
	@NotBlank
	private String nbqa_content; //게시물내용
	private String nbqa_file;
	//정적 파일
	private MultipartFile upload_file;
	
	private int nbqa_click; //게시물 조회수
	
	private int mb_no; //고객번호
	private String mb_id;
	
	private int nbqa_board_no; //게시판 구분자
	
	private String nbqa_date; //올린 날짜
}
