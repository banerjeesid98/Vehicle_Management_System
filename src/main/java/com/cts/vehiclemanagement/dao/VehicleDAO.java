package com.cts.vehiclemanagement.dao;

import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;  
import org.springframework.jdbc.core.JdbcTemplate;  
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.cts.vehiclemanagement.bean.Vehicle;
 

@Repository  
public class VehicleDAO
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
	
	public int save(Vehicle v)
	{  
	    String sql="insert into vehicle(vehicleId,vehicleName,vehicleType,cost,rating,qtyAvailable) values('"+v.getVehicleId()+"','"+v.getVehicleName()+"','"+v.getVehicleType()+"','"+v.getCost()+"','"+v.getRating()+"','"+v.getQtyAvailable()+"')";
	    return template.update(sql);  
	}  
	public int update(Vehicle v)
	{  
	    String sql="update vehicle set vehicleName='"+v.getVehicleName()+"', vehicleType='"+v.getVehicleType()+"',cost='"+v.getCost()+"',rating='"+v.getRating()+"',qtyAvailable='"+v.getQtyAvailable()+"' where vehicleId='"+v.getVehicleId()+"'";  
	    return template.update(sql);  
	}  
	
	
	
	public int reduce(Vehicle v) 
	{	
		String sql="update vehicle set qtyAvailable = qtyAvailable - 1 where vehicleId = '"+v.getVehicleId()+"'";
		return template.update(sql);
	}

	
	public int delete(String vId)
	{  
	    String sql="delete from vehicle where vehicleId='"+vId+"'";  
	    return template.update(sql);  
	}  
	public Vehicle getVehicleById(String vId)
	{  
	    String sql="select * from vehicle where vehicleId=?";  
	    return template.queryForObject(sql, new Object[]{vId}, new BeanPropertyRowMapper<Vehicle>(Vehicle.class));  
	}  
	public List<Vehicle> getVehicle()
	{  
	    return template.query("select * from vehicle", new RowMapper<Vehicle>()
	    {  
	        public Vehicle mapRow(ResultSet rs, int row) throws SQLException 
	        {  
	            Vehicle v=new Vehicle();
	            v.setVehicleId(rs.getString(1));
	            v.setVehicleName(rs.getString(2));
	            v.setVehicleType(rs.getString(3));
	            v.setCost(rs.getDouble(4));
	            v.setRating(rs.getDouble(5));
	            v.setQtyAvailable(rs.getInt(6)); 
	            
	            return v;  
	        }  
	    });  
	}  
}