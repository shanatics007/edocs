package com.edocs.Repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.edocs.Model.AdditionalInfoModel;

public interface AdditionalInfoRepository extends JpaRepository<AdditionalInfoModel, Long>{

	
	Optional<AdditionalInfoModel> getOneByAuthKey(String authKey);
}
