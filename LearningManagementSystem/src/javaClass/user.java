package javaClass;

import javax.persistence.Entity;
import javax.persistence.Id;





@Entity
public class user {
	
	@Id
	
	String id;
	String name;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id2) {
		this.id = id2;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	

}
