package kr.or.phonejob.Dto;

public class LoginDto {

	private String userid;
	private String username;
	private String userpwd;
	private String gubun;
	private String usermail;
	private String pic;
	private String userphone;
	private String userbirth;
	private String useraddr1;
	private String useraddr2;
	private String credential_id;
	
	
	
		
	public String getCredential_id() {
		return credential_id;
	}
	public void setCredential_id(String credential_id) {
		this.credential_id = credential_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getGubun() {
		return gubun;
	}
	public void setGubun(String gubun) {
		this.gubun = gubun;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	public String getUsermail() {
		return usermail;
	}
	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getUserphone() {
		return userphone;
	}
	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}
	public String getUserbirth() {
		return userbirth;
	}
	public void setUserbirth(String userbirth) {
		this.userbirth = userbirth;
	}
	public String getUseraddr1() {
		return useraddr1;
	}
	public void setUseraddr1(String useraddr1) {
		this.useraddr1 = useraddr1;
	}
	public String getUseraddr2() {
		return useraddr2;
	}
	public void setUseraddr2(String useraddr2) {
		this.useraddr2 = useraddr2;
	}
	@Override
	public String toString() {
		return "LoginDto [userid=" + userid + ", username=" + username + ", userpwd=" + userpwd + ", gubun=" + gubun
				+ ", usermail=" + usermail + ", pic=" + pic + ", userphone=" + userphone + ", userbirth=" + userbirth
				+ ", useraddr1=" + useraddr1 + ", useraddr2=" + useraddr2 + ", credential_id=" + credential_id + "]";
	}

	
	
	
	
}
