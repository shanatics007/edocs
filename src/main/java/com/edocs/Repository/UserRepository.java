package com.edocs.Repository;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.edocs.Model.UserModel;

public interface UserRepository extends CrudRepository<UserModel, Long> {

	Optional<UserModel> findOneByUserEmail(String userEmail);

	UserModel findByUserEmail(String username);

	UserModel findOneByUserId(long userId);

}
