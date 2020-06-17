package com.dulich.repository;

import com.dulich.entity.CategoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CategoryRepository extends JpaRepository<CategoryEntity , Long>
{
    CategoryEntity findCategoryEntityById(Long id);
    CategoryEntity findByCode(String code);
    CategoryEntity findByName(String name);
    @Query(value = "select name from category" , nativeQuery = true )
    List<String> findName();
}
