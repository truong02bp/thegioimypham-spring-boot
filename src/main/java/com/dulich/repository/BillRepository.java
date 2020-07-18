package com.dulich.repository;

import com.dulich.entity.BillEntity;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;


public interface BillRepository extends JpaRepository<BillEntity , Long>
{
}
