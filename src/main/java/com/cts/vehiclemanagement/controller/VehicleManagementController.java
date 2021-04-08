package com.cts.vehiclemanagement.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cts.vehiclemanagement.bean.Booking;
import com.cts.vehiclemanagement.bean.User;
import com.cts.vehiclemanagement.bean.Vehicle;
import com.cts.vehiclemanagement.dao.BookingDAO;
import com.cts.vehiclemanagement.dao.UserRepository;
import com.cts.vehiclemanagement.dao.VehicleDAO;




@Controller
public class VehicleManagementController {
	@Autowired  
    VehicleDAO dao;
	@Autowired  
	BookingDAO bookdao;
	@Autowired
	UserRepository usrrepo;	
	@Autowired
	User usr=null;
	
	@RequestMapping("/")	
	public String home(Model m) 
	{		
		List<Vehicle> list=dao.getVehicle();  
        m.addAttribute("list",list);
        return "customerview";
	}
	
	@RequestMapping("/customerview")	
	public String custview(Model m) 
	{		
		List<Vehicle> list=dao.getVehicle();  
        m.addAttribute("list",list);
        return "customerview";
	}
	
	@RequestMapping("/adminlogin")	
	public String adminlogin() {
		return "adminlogin";
	}
	
	@RequestMapping("/logincheck")
	public String check(User usr1){
		
		System.out.println("User 1"+usr1);
		
		usr= usrrepo.findByEmailAndPassword(usr1.getEmail(),usr1.getPassword());
		
		//usrrepo.save(usr);
		
	//Optional<User> usr= usrrepo.findById("admin");
		
		 if ( null == usr )
		 {	 
			 System.out.println("invalid user");
			 return "redirect:/loginfail";		 
		 }
		 else 
		 {
			 System.out.println(usr);	
		 return "redirect:/adminview";
		 }
	}
	
	@RequestMapping("/loginfail")
	public String fail(){
		return "loginfail";
	}
	
	@RequestMapping("/relogin")
	public String relogin(){
		return "relogin";
	}
	
	@RequestMapping("/adminview")	
	public String adminViewpage(Model m) 
	{
		if ( null == usr.getEmail() )
		 {	 
			 System.out.println("invalid user");
			 return "redirect:/relogin";		 
		 }
		 else 
		 {
			 System.out.println(usr);
			List<Vehicle> list=dao.getVehicle();  
	        m.addAttribute("list",list);
			return "adminview";
		 }
	}
	
	@RequestMapping("/addnewbyadmin")  
    public String showform(Model m)
    {
		if ( null == usr.getEmail() )
		 {	 
			 System.out.println("invalid user");
			 return "redirect:/relogin";		 
		 }
		 else 
		 {
			 m.addAttribute("command", new Vehicle());
			 return "addnewbyadmin"; 
		 }
    }
	
	 @RequestMapping(value="/save",method = RequestMethod.POST)  
	    public String save(@ModelAttribute("v") Vehicle v)
	    {  
	        dao.save(v);  
	        return "redirect:/adminview";
	    }
	
	  @RequestMapping(value="/edit/{vehicleId}")  
	    public String edit(@PathVariable(name="vehicleId") String vId, Model m)
	    {  
	        Vehicle v=dao.getVehicleById(vId);  
	        m.addAttribute("command",v);
	        return "editbyadmin";  
	    }  
	     
	    @RequestMapping(value="/editsave",method = RequestMethod.POST)  
	    public String editsave(@ModelAttribute("v") Vehicle v)
	    {  
	    	dao.update(v);  
	        return "redirect:/adminview";  
	    }
	    
	    @RequestMapping(value="/delete/{vehicleId}",method = RequestMethod.GET)  
	    public String delete(@PathVariable(name="vehicleId") String vId){  
	        dao.delete(vId);  
	        return "redirect:/adminview";  
	    }
	    
	    @RequestMapping("/bookingview")	
		public String bookview(Model bm) 
		{			
			if ( null == usr.getEmail() )
			 {	 
				 System.out.println("invalid user");
				 return "redirect:/relogin";		 
			 }
			 else 
			 {	
				List<Booking> list=bookdao.getBooking();  
		        bm.addAttribute("list",list);
				return "bookingview";
			 }
		}

	@RequestMapping("/logout")	
	public String adminlogout() {
		usr.setEmail(null);
		return "logout";
	}
}
