package VO;

public class BoardVO {
	int seq;
	String title;
	String contents;
	String time; 
	String writer; 
	String picture;
	int viewcount;
	
	public BoardVO(String title, String contents, String writer, String picture) {
		super();
		this.title = title;
		this.contents = contents;
		this.writer = writer;
		this.picture = picture;
	}

	public BoardVO(int seq, String title, String contents, String time, String writer, String picture,int viewcount) {
		
		super();
		this.seq = seq;
		this.title = title;
		this.contents = contents;
		this.time = time;
		this.writer = writer;
		this.picture = picture;
		this.viewcount = viewcount;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String date) {
		this.time = date;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}
	
	
}
