package com.edocs.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.edocs.Model.EmploymentStatusModel;

public interface EmploymentStatusRepository extends JpaRepository<EmploymentStatusModel, Integer> {

}
