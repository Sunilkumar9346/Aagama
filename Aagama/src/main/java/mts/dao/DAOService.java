package mts.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.cj.protocol.Resultset;

import mts.dto.Event;
import mts.dto.UserRegistered;
public class DAOService 
{
	private Connection con;
	public DAOService() 
	{	try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aagamadb","root","sunil");
				System.out.println("Connection established....");
		}catch(Exception ex)
		{
			System.err.println("Not Connected to DB");
		}
	}
	public ArrayList<String>  getCoordinatorIds()
	{
		ArrayList<String> al=new ArrayList<String>();
		try {
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select email from register where role='coordinator'");
			while(rs.next())
			{
				al.add(rs.getString("email"));
			}
		}catch(Exception ex)
		{
			System.out.println(ex);
		}
		return al;
	}
	public ArrayList<Event>  getEvents()
	{
		ArrayList<Event> al=new ArrayList<Event>();
		try {
			Statement stmt= con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from events");
			while(rs.next())
			{
				Event event=new Event();
				event.setId(rs.getString("id"));
				event.setName(rs.getString("name"));
				event.setType(rs.getString("type"));
				event.setBranch(rs.getString("branch"));
				event.setRegAmount(rs.getString("registration_amount"));
				event.setCoordinatorId1(rs.getString("coordinator_id1"));
				event.setCoordinatorId2(rs.getString("coordinator_id2"));
				event.setLocation(rs.getString("location"));
				event.setWinningPrize(rs.getString("winning_prize"));
				event.setStartTime(rs.getString("start_time"));
				event.setEventDate(rs.getString("event_date"));
				al.add(event);
			}
		}catch(Exception ex)
		{	System.out.println(ex);
		}
		return al;
	}
	
	public ArrayList<UserRegistered> getRegisteredUsers() {
		ArrayList<UserRegistered> arr1=new ArrayList<UserRegistered>();
		
		try {
		  Statement stmt =con.createStatement();
		  ResultSet count=stmt.executeQuery("select * from registeredusers");
		  while(count.next()) {
			  UserRegistered urs=new UserRegistered();
			  urs.setUser(count.getString(1));
			  urs.setEvent(count.getString(2));
			  urs.setAmount(count.getString(3));
			  
			  arr1.add(urs);
			  
		  }
		  
			
	}catch(Exception ex) {
		System.out.println(ex);
	}
		return arr1;
		
	}
	
	
}
