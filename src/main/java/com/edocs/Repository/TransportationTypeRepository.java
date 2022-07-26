package com.edocs.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.edocs.Model.TransportationTypeModel;

public interface TransportationTypeRepository extends JpaRepository<TransportationTypeModel, Integer> {

}
