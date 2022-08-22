package com.simplilearn.demo;

public class Userdetails {
	private String pname;
	private String pgender;
	private String pnumber;
	private String pemail;
	private String page;
	
	
	
	
	public Userdetails(String pname, String pgender, String pnumber, String pemail, String page) {
		super();
		this.pname = pname;
		this.pgender = pgender;
		this.pnumber = pnumber;
		this.pemail = pemail;
		this.page = page;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPgender() {
		return pgender;
	}
	public void setPgender(String pgender) {
		this.pgender = pgender;
	}
	public String getPnumber() {
		return pnumber;
	}
	public void setPnumber(String pnumber) {
		this.pnumber = pnumber;
	}
	public String getPemail() {
		return pemail;
	}
	public void setPemail(String pemail) {
		this.pemail = pemail;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	
	
	
	
	
	
}
