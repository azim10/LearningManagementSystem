package javaClass;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity 
public class AddNewCourseForm {
	
	@Id @GeneratedValue
	int CourseId;
	String CourseName;
	String Description;
	String CourseKey;
	String Teacher;
	int T_Id;
	
	
	
	
	public int getT_Id() {
		return T_Id;
	}
	public void setT_Id(int t_Id) {
		this.T_Id = t_Id;
	}
	public int getCourseId() {
		return CourseId;
	}
	public void setCourseId(int courseId) {
		CourseId = courseId;
	}
	public String getCourseName() {
		return CourseName;
	}
	public void setCourseName(String courseName) {
		CourseName = courseName;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getCourseKey() {
		return CourseKey;
	}
	public void setCourseKey(String courseKey) {
		CourseKey = courseKey;
	}
	public void setTeacher1(String teacher2) {
		Teacher = teacher2;
		
	}
	public String getTeacher1() {
		return Teacher;
	}
	

}
