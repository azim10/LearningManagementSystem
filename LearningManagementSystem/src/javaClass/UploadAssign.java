package javaClass;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
@Entity
public class UploadAssign {
	
	
	@Id @GeneratedValue
	int assId;
	int s_Id;
	int C_Id;
	String Path;
	int SubLink;

	public int getAssId() {
		return assId;
	}
	public void setAssId(int assId) {
		this.assId = assId;
	}
	public int getS_Id() {
		return s_Id;
	}
	public void setS_Id(int s_Id) {
		this.s_Id = s_Id;
	}
	public int getC_Id() {
		return C_Id;
	}
	public void setC_Id(int c_Id) {
		C_Id = c_Id;
	}
	public String getPath() {
		return Path;
	}
	public void setPath(String path) {
		Path = path;
	}
	public int getSubLink() {
		return SubLink;
	}
	public void setSubLink(int subLink) {
		SubLink = subLink;
	}
}
