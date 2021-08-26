package org.zerock.domain;

import java.util.Date;

public class MusicVO {
	
	private String record;
	private String rname;
	private String img;
	private String track1;
	private String track2;
	private String track3;
	private String track4;
	private String track5;
	private String note;
	private String singer;
	private Date reldate;
	private String rnew;
	private String company;
	private Date regdate;
	
	public String getRecord() {
		return record;
	}
	public void setRecord(String record) {
		this.record = record;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getTrack1() {
		return track1;
	}
	public void setTrack1(String track1) {
		this.track1 = track1;
	}
	public String getTrack2() {
		return track2;
	}
	public void setTrack2(String track2) {
		this.track2 = track2;
	}
	public String getTrack3() {
		return track3;
	}
	public void setTrack3(String track3) {
		this.track3 = track3;
	}
	public String getTrack4() {
		return track4;
	}
	public void setTrack4(String track4) {
		this.track4 = track4;
	}
	public String getTrack5() {
		return track5;
	}
	public void setTrack5(String track5) {
		this.track5 = track5;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public Date getReldate() {
		return reldate;
	}
	public void setReldate(Date reldate) {
		this.reldate = reldate;
	}
	public String getRnew() {
		return rnew;
	}
	public void setRnew(String rnew) {
		this.rnew = rnew;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "MusicVO [record=" + record + ", rname=" + rname + ", img=" + img + ", track1=" + track1 + ", track2="
				+ track2 + ", track3=" + track3 + ", track4=" + track4 + ", track5=" + track5 + ", note=" + note
				+ ", singer=" + singer + ", reldate=" + reldate + ", rnew=" + rnew + ", company=" + company
				+ ", regdate=" + regdate + "]";
	}	
	
}
