package mts.dto;
import java.util.Objects;
public class Register 
{
	private String email;
	private String password;
	private String college;
	private String fullName;
	private String phone;
	private String city;
	private String role;
	public Register() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Register(String email, String password, String college, String fullName, String phone, String city,
			String role) {
		super();
		this.email = email;
		this.password = password;
		this.college = college;
		this.fullName = fullName;
		this.phone = phone;
		this.city = city;
		this.role = role;
	}

	
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	@Override
	public int hashCode() {
		return Objects.hash(city, college, email, fullName, password, phone);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Register other = (Register) obj;
		return Objects.equals(city, other.city) && Objects.equals(college, other.college)
				&& Objects.equals(email, other.email) && Objects.equals(fullName, other.fullName)
				&& Objects.equals(password, other.password) && Objects.equals(phone, other.phone);
	}

	@Override
	public String toString() {
		return "Register [email=" + email + ", password=" + password + ", college=" + college + ", fullName=" + fullName
				+ ", phone=" + phone + ", city=" + city + ", role=" + role + "]";
	}
	
	
	
}
