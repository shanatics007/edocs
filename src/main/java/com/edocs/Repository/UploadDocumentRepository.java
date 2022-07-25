package com.edocs.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.edocs.Model.UplodDocumentModel;

public interface UploadDocumentRepository extends JpaRepository<UplodDocumentModel, Long>{

}
