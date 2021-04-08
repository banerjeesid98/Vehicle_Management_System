package com.cts.vehiclemanagement.dao;
import java.sql.ResultSet;  
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;  
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.cts.vehiclemanagement.bean.Booking;
import com.cts.vehiclemanagement.bean.Vehicle;


	
	@Repository  
	public class BookingDAO
	{  
		@Autowired
		private JdbcTemplate template;  
		  
		public void setTemplate(JdbcTemplate template) 
		{  
		    this.template = template;  
		}
		
		public JdbcTemplate getTemplate() 
		{
			return template;
		}
		
		public int save(Booking b,Vehicle v)
		{
			b.setVehicleId(v.getVehicleId());
			b.setVehicleName(v.getVehicleName());
			Timestamp timestamp = new Timestamp(System.currentTimeMillis());
			long time = timestamp.getTime();
		    String sql="insert into booking(bookingId,vehicleName,vehicleId,custName,address,emailId,phoneNo) values('"+"BO"+b.getVehicleId()+time+"','"+b.getVehicleName()+"','"+b.getVehicleId()+"','"+b.getCustName()+"','"+b.getAddress()+"','"+b.getEmailId()+"','"+b.getPhoneNo()+"')";
		    return template.update(sql);  
		}  
		
		public int delete(String bId)
		{  
		    String sql="delete from booking where bookingId='"+bId+"'";  
		    return template.update(sql);  
		}
		
		public Booking getBookingById(String bId)
		{  
		    String sql="select * from booking where bookingId=?";  
		    return template.queryForObject(sql, new Object[]{bId}, new BeanPropertyRowMapper<Booking>(Booking.class));  
		}
		
		public int update(Booking b)
		{  
		    String sql="update booking set bookingId='"+b.getBookingId()+"', custName='"+b.getCustName()+"',address='"+b.getAddress()+"',emailId='"+b.getEmailId()+"',phoneNo='"+b.getPhoneNo()+"',vehicleName='"+b.getVehicleName()+"',vehicleId='"+b.getVehicleId()+"' where bookingId='"+b.getBookingId()+"'";  
		    return template.update(sql);  
		}
		
		public List<Booking> getBooking()
		{  
		    return template.query("select * from booking", new RowMapper<Booking>()
		    {  
		        public Booking mapRow(ResultSet rs, int row) throws SQLException 
		        {  
		            Booking b=new Booking();
		            b.setBookingId(rs.getString(1));
		            b.setCustName(rs.getString(2));
		            b.setAddress(rs.getString(3));
		            b.setEmailId(rs.getString(4));
		            b.setPhoneNo(rs.getString(5));
		            b.setVehicleName(rs.getString(6));
		            b.setVehicleId(rs.getString(7));
		            return b;  
		        }  
		    });  
		}
	}