package com.dulich.repository;

import com.dulich.entity.BillEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;


public interface BillRepository extends JpaRepository<BillEntity , Long>
{
    Optional<BillEntity> findById(Long id);
}
