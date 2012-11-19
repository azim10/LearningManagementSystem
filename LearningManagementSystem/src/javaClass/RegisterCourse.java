package javaClass;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class RegisterCourse {
	
	@Id @GeneratedValue
	int idRegisterCourse;
	int UserId;
	int CourseId;
	
	public int getIdRegisterCourse() {
		return idRegisterCourse;
	}
	public void setIdRegisterCourse(int idRegisterCourse) {
		this.idRegisterCourse = idRegisterCourse;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public int getCourseId() {
		return CourseId;
	}
	public void setCourseId(int courseId) {
		CourseId = courseId;
	}

}
