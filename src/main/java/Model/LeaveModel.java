package Model;

public class LeaveModel {
	private int ID;
private String firstName;
private String lastName;
private String phone;
private String email;
private String reason;
private String startDate;
private String endDate;

public int getId() {
    return ID;
}

public void setId(int ID) {
    this.ID = ID;
}

// Getters and setters
public String getFirstName() { 
	return firstName;
	}
public void setFirstName(String firstName) {
	this.firstName = firstName;
	}

public String getLastName() {
	return lastName;
	}
public void setLastName(String lastName) { 
	this.lastName = lastName;
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

public String getReason() { 
	return reason;
	}
public void setReason(String reason) {
	this.reason = reason;
	}

public String getStartDate() {
	return startDate;
	}
public void setStartDate(String startDate) {
	this.startDate = startDate; 
	}

public String getEndDate() { 
	return endDate; 
	}
public void setEndDate(String endDate) {
	this.endDate = endDate;
	}
}



