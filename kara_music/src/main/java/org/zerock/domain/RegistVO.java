package org.zerock.domain;


public class RegistVO {
	// 게시판번호
	private int bno;
	// 제목
	private String title;
	// 내용
	private String content;
	// 작성자 아이디
	private String user_id;
	// 작성자
	private String writer;
	// 작성일자
	private String regdate;
	// 수정일자
	private String updatedate;
	// 댓글건수
	private int replycnt;
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}	
	
	public String getRegdate() {
		return regdate;
	}
	
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	public String getUpdatedate() {
		return updatedate;
	}
	
	public void setUpdatedate(String updatedate) {
		this.updatedate = updatedate;
	}
	
	public int getReplycnt() {
		return replycnt;
	}
	
	public void setReplycnt(int replycnt) {
		this.replycnt = replycnt;
	}
	
	@Override
	public String toString() {
		return "RegistVO [bno=" + bno + ", title=" + title + ", content=" + content + ", user_id=" + user_id
				+ ", writer=" + writer + ", regdate=" + regdate + ", updatedate=" + updatedate + ", replycnt="
				+ replycnt + "]";
	}
	
}
