package com.edocs.Repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.edocs.Model.ApplicationForVisaModel;
import com.edocs.Model.UserModel;

public interface UserRepository extends CrudRepository<UserModel, Long> {

	Optional<UserModel> findOneByUserEmail(String userEmail);

	UserModel findByUserEmail(String username);

	UserModel findOneByUserId(long userId);
	
	
	

}
