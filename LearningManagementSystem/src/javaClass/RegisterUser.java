package javaClass;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity
public class RegisterUser {	

	@Id @GeneratedValue
	int idRegisterUser;
	
	String uName;
	String userType;

	String fName;
	String lName;
	String Password;
	String CPassword;
	String Email_id;
	String City;
	
	
	public int getIdRegisterUser() {
		return idRegisterUser;
	}
	public void setIdRegisterUser(int idRegisterUser) {
		this.idRegisterUser = idRegisterUser;
	}
	
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getCPassword() {
		return CPassword;
	}
	public void setCPassword(String cPassword) {
		CPassword = cPassword;
	}
	public String getEmail_id() {
		return Email_id;
	}
	public void setEmail_id(String email_id) {
		Email_id = email_id;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getType() {
		return userType;
	}
	public void setType(String userType) {
		this.userType = userType;
	}

}
