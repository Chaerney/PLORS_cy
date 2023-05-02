package kr.co.itfriend.beans;

import java.math.BigDecimal;

public class BookBean {

	private BigDecimal bk_isbn;
	private String bk_name;
	private String bk_author;
	private String bk_publisher;
	private String bk_publishingdate;
	private String bk_genre;
	private int bk_totalamount;
	private int bk_rentalamount;
	private String bk_rentalyn;
	private int lb_no;
	
	public BigDecimal getBk_isbn() {
		return bk_isbn;
	}
	public void setBk_isbn(BigDecimal bk_isbn) {
		this.bk_isbn = bk_isbn;
	}
	public String getBk_name() {
		return bk_name;
	}
	public void setBk_name(String bk_name) {
		this.bk_name = bk_name;
	}
	public String getBk_author() {
		return bk_author;
	}
	public void setBk_author(String bk_author) {
		this.bk_author = bk_author;
	}
	public String getBk_publisher() {
		return bk_publisher;
	}
	public void setBk_publisher(String bk_publisher) {
		this.bk_publisher = bk_publisher;
	}
	public String getBk_publishingdate() {
		return bk_publishingdate;
	}
	public void setBk_publishingdate(String bk_publishingdate) {
		this.bk_publishingdate = bk_publishingdate;
	}
	public String getBk_genre() {
		return bk_genre;
	}
	public void setBk_genre(String bk_genre) {
		this.bk_genre = bk_genre;
	}
	public int getBk_totalamount() {
		return bk_totalamount;
	}
	public void setBk_totalamount(int bk_totalamount) {
		this.bk_totalamount = bk_totalamount;
	}
	public int getBk_rentalamount() {
		return bk_rentalamount;
	}
	public void setBk_rentalamount(int bk_rentalamount) {
		this.bk_rentalamount = bk_rentalamount;
	}
	public String getBk_rentalyn() {
		return bk_rentalyn;
	}
	public void setBk_rentalyn(String bk_rentalyn) {
		this.bk_rentalyn = bk_rentalyn;
	}
	public int getLb_no() {
		return lb_no;
	}
	public void setLb_no(int lb_no) {
		this.lb_no = lb_no;
	}
	
	
}
