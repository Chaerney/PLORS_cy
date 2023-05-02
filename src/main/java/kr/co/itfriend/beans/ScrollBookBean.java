package kr.co.itfriend.beans;

import java.util.ArrayList;
import java.util.List;

public class ScrollBookBean {

	private int startIndex;
	private int endIndex;
	private List<BookBean> booklist;
	private int lb_no;
	
	public ScrollBookBean() {
		this.startIndex = 1;
		this.endIndex = 10;
		this.booklist = new ArrayList<BookBean>();
	}
	
	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public int getEndIndex() {
		return endIndex;
	}

	public void setEndIndex(int endIndex) {
		this.endIndex = endIndex;
	}

	public List<BookBean> getBooklist() {
		return booklist;
	}

	public void setBooklist(List<BookBean> booklist) {
		this.booklist = booklist;
	}

	public int getLb_no() {
		return lb_no;
	}

	public void setLb_no(int lb_no) {
		this.lb_no = lb_no;
	}
	
	
}
