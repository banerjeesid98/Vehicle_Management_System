package com.cts.vehiclemanagement.dao;


import org.springframework.data.repository.CrudRepository;

import com.cts.vehiclemanagement.bean.User;

public interface UserRepository extends CrudRepository<User,String>{



	User findByEmailAndPassword(String email, String password);

	
	
	
	
	
	
	
	
	
}

