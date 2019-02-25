package VO;

import java.util.Date;

public class MemberVO {

	//필드 변수
	String id; 
	String pw;
	String name; 
	Date birthday; 
	int gender; 
	String phone; 
	String adress; 
	
	//생성자
	public MemberVO(String id, String pw, String name, Date birthday, int gender, String phone, String adress) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.birthday = birthday;
		this.gender = gender;
		this.phone = phone;
		this.adress = adress;
	}
	public MemberVO(String id, String pw, String name, Date birthday, int gender, String phone) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.birthday = birthday;
		this.gender = gender;
		this.phone = phone;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", name=" + name + ", birthday=" + birthday + ", gender=" + gender
				+ ", phone=" + phone + ", adress=" + adress + "]";
	}
	
	
}
