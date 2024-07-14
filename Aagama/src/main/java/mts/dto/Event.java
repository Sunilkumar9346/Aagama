package mts.dto;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
public class Event {
	private String id;
	private String name;
	private String type;
	private String regAmount;
	private String branch;
	private String coordinatorId1;
	private String coordinatorId2;
	private String location;
	private String winningPrize;
	private String startTime;
	private String eventDate;
	
	public Event() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getRegAmount() {
		return regAmount;
	}

	public void setRegAmount(String regAmount) {
		this.regAmount = regAmount;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getCoordinatorId1() {
		return coordinatorId1;
	}

	public void setCoordinatorId1(String coordinatorId1) {
		this.coordinatorId1 = coordinatorId1;
	}

	public String getCoordinatorId2() {
		return coordinatorId2;
	}

	public void setCoordinatorId2(String coordinatorId2) {
		this.coordinatorId2 = coordinatorId2;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getWinningPrize() {
		return winningPrize;
	}

	public void setWinningPrize(String winningPrize) {
		this.winningPrize = winningPrize;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEventDate() {
		return eventDate;
	}

	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}

	public Event(String id, String name, String type, String regAmount, String branch, String coordinatorId1,
			String coordinatorId2, String location, String winningPrize, String startTime, String eventDate) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.regAmount = regAmount;
		this.branch = branch;
		this.coordinatorId1 = coordinatorId1;
		this.coordinatorId2 = coordinatorId2;
		this.location = location;
		this.winningPrize = winningPrize;
		this.startTime = startTime;
		this.eventDate = eventDate;
	}

	@Override
	public String toString() {
		return "Event [id=" + id + ", name=" + name + ", type=" + type + ", regAmount=" + regAmount + ", branch="
				+ branch + ", coordinatorId1=" + coordinatorId1 + ", coordinatorId2=" + coordinatorId2 + ", location="
				+ location + ", winningPrize=" + winningPrize + ", startTime=" + startTime + ", eventDate=" + eventDate
				+ "]";
	}
	
	
	
	
	
}
