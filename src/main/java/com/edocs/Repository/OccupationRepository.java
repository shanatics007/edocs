package com.edocs.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.edocs.Model.OccupationModel;

public interface OccupationRepository extends JpaRepository<OccupationModel, Integer> {

}
