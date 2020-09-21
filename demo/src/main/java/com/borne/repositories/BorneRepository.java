package com.borne.repositories;

import com.borne.entities.Borne;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface BorneRepository extends JpaRepository<Borne, Integer>, JpaSpecificationExecutor<Borne> {

}