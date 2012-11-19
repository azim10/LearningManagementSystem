package javaClass;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Faculty_gives_submittion_link {

	@Id @GeneratedValue
	int SubmitionLink;
	int TeacherId;
	
	int CourseId;
	String TopicName;
	String Discription;
	String DateOfAnnouncing;
	String DateOfRealise;
	String DisabelLinkAfter;
	String MaximumSize;
	
	
	public String getTopicName() {
		return TopicName;
	}
	public void setTopicName(String topicName) {
		TopicName = topicName;
	}
	public String getDiscription() {
		return Discription;
	}
	public void setDiscription(String discription) {
		Discription = discription;
	}
	public String getDateOfAnnouncing() {
		return DateOfAnnouncing;
	}
	public void setDateOfAnnouncing(String dateOfAnnouncing) {
		DateOfAnnouncing = dateOfAnnouncing;
	}
	public String getDateOfRealise() {
		return DateOfRealise;
	}
	public void setDateOfRealise(String dateOfRealise) {
		DateOfRealise = dateOfRealise;
	}
	public String getDisabelLinkAfter() {
		return DisabelLinkAfter;
	}
	public void setDisabelLinkAfter(String disabelLinkAfter) {
		DisabelLinkAfter = disabelLinkAfter;
	}
	public String getMaximumSize() {
		return MaximumSize;
	}
	public void setMaximumSize(String maximumSize) {
		MaximumSize = maximumSize;
	}
	public int getTeacherId() {
		return TeacherId;
	}
	public void setTeacherId(int teacherId) {
		TeacherId = teacherId;
	}
	public int getCourseId() {
		return CourseId;
	}
	public void setCourseId(int courseId) {
		CourseId = courseId;
	}
	
}
