package com.edocs.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.edocs.Model.MaritialStatusModel;

public interface MaritialStatusRepository extends JpaRepository<MaritialStatusModel	, Integer> {

}
