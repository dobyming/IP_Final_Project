package com.ipfinal.model;

public class Board {
	private int numid; //게시글 번호
	private String title; //게시글 제목
	private String writer; //작성자
	public int getNumid() {
		return numid;
	}
	public void setNumid(int numid) {
		this.numid = numid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
}
