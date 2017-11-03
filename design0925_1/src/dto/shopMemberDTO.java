package dto;

import java.sql.Date;

public class shopMemberDTO {
	private String id;
	private String pw;
	private String name;
	private String zipcode;
	private String addr1;
	private String addr2;
	private String phone;
	private String email;
	private Date regdate;
	
	public shopMemberDTO(){
		super();
	}

	public shopMemberDTO(String id, String pw, String name, String zipcode, String addr1, String addr2, String phone,
			String email, Date regdate) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.zipcode = zipcode;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.phone = phone;
		this.email = email;
		this.regdate = regdate;
	}
	
	public shopMemberDTO(String id, String pw, String name, String zipcode, String addr1, String addr2, String phone,
			String email) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.zipcode = zipcode;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.phone = phone;
		this.email = email;
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

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}


	
}
	
	