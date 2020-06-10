package com.dulich.repository;

import com.dulich.entity.CategoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<CategoryEntity , Long>
{
    CategoryEntity findByCode(String code);
}
