package com.cts.vehiclemanagement.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
public class BookingController {
	@Autowired  
    VehicleDAO dao;
	@Autowired
	BookingDAO bookdao;
	@Autowired
	UserRepository usrrepo;	
	@Autowired
	User usr=null;

	
	@RequestMapping("/bookpage/{vehicleId}")	
	public String book(HttpSession Session,@PathVariable(name="vehicleId") String vId,Model bm) {
		Vehicle v=dao.getVehicleById(vId);
		bm.addAttribute("command", new Booking());
		Session.setAttribute("vId", v);
		return "bookpage";
	}
	
	@RequestMapping(value="/bookpage/booknow",method = RequestMethod.POST)  
    public String save(@ModelAttribute("bm") Booking bm,HttpSession Session)
    {   
    	Vehicle v = (Vehicle)Session.getAttribute("vId");
    	System.out.println(v);
        bookdao.save(bm,v);
        dao.reduce(v);
        return "redirect:/thnx";
    }
	
	@RequestMapping(value="/editbook/{bookingId}")  
    public String edit(@PathVariable(name="bookingId") String bId, Model m)
    {  
        Booking b=bookdao.getBookingById(bId);  
        m.addAttribute("command",b);
        return "bookedit";  
    }  
     
    @RequestMapping(value="/editsavebook",method = RequestMethod.POST)  
    public String editsave(@ModelAttribute("b") Booking b)
    {  
        bookdao.update(b);  
        return "redirect:/bookingview";  
    }
	
	@RequestMapping("/thnx")	
	public String book() {			
		return "thnx";
	}
	
	
	@RequestMapping(value="/deletebook/{bookingId}",method = RequestMethod.GET)  
    public String bookdelete(@PathVariable(name="bookingId") String bId){
		System.out.println("Booking Id"+bId);
        bookdao.delete(bId);  
        return "redirect:/bookingview";  
    }

}
