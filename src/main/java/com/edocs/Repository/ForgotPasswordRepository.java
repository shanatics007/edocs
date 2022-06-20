package com.edocs.Repository;

import java.util.Date;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.edocs.Model.AuthenticationForgotpass;

public interface ForgotPasswordRepository extends CrudRepository<AuthenticationForgotpass, Long> {

    @Query("From AuthenticationForgotpass where is_active = 1 AND user_id =?1")
	public Optional<AuthenticationForgotpass> findByuserId(long userId);

    @Query("From AuthenticationForgotpass where is_active = 1 AND authKey = ?1 AND created_on > ?2")
	public Optional<AuthenticationForgotpass> findByauthKey(String string, Date yesterday);


    @Transactional
	@Modifying
	@Query("update AuthenticationForgotpass set is_active = 0 where created_on < ?1 and is_active = 1")
	public void updateAllWithGreter24hrs(Date yesterday);
	
}
