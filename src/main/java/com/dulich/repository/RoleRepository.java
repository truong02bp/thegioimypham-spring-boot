package com.dulich.repository;

import com.dulich.entity.RoleEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<RoleEntity , Long>
{

}