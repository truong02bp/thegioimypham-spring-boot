package com.dulich.repository;

import com.dulich.entity.ItemEntity;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ItemRepository extends JpaRepository<ItemEntity,Long>
{
    List<ItemEntity> findAllByWeb(String web);
    List<ItemEntity> findAllByCategoryId(Long id , Pageable pageable);
    Long countByCategoryId(Long id);
}
