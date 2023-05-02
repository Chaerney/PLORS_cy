package kr.co.itfriend.beans;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardBean {
	
	private int board_id; //게시판 번호 구분 1=공지사항 2=자유 3=문의
	private String board_name; //게시판 이름
	
}
