package soccer.deploy.dto;

import lombok.Data;

@Data
public class usersDTO {
	
	private int user_id;
	private	String passwd;
	private	String email;
	private	String name;
	private	int age;
	private	String address;
	private	String img_cont_type;
	private	String img_file_name;
	private	int backnum;
	private String member_auth;
	private String position;
	private String regdate;
	
	public usersDTO() {}
	
	public usersDTO(int user_id, String passwd, String email, String name, int age, String address,
			String img_cont_type, String img_file_name, int backnum, String member_auth, String position,
			String regdate) {
		super();
		this.user_id = user_id;
		this.passwd = passwd;
		this.email = email;
		this.name = name;
		this.age = age;
		this.address = address;
		this.img_cont_type = img_cont_type;
		this.img_file_name = img_file_name;
		this.backnum = backnum;
		this.member_auth = member_auth;
		this.position = position;
		this.regdate = regdate;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getImg_cont_type() {
		return img_cont_type;
	}

	public void setImg_cont_type(String img_cont_type) {
		this.img_cont_type = img_cont_type;
	}

	public String getImg_file_name() {
		return img_file_name;
	}

	public void setImg_file_name(String img_file_name) {
		this.img_file_name = img_file_name;
	}

	public int getBacknum() {
		return backnum;
	}

	public void setBacknum(int backnum) {
		this.backnum = backnum;
	}

	public String getMember_auth() {
		return member_auth;
	}

	public void setMember_auth(String member_auth) {
		this.member_auth = member_auth;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
	
}
