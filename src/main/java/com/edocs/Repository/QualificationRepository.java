package com.edocs.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.edocs.Model.QualificationModel;

public interface QualificationRepository extends JpaRepository<QualificationModel, Integer> {

}
