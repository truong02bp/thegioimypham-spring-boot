package com.dulich.repository;

import com.dulich.entity.ItemEntity;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ItemRepository extends JpaRepository<ItemEntity,Long>
{
    List<ItemEntity> findAllByWeb(String web);
    List<ItemEntity> findAllByCategoryId(Long id , Pageable pageable);
    List<ItemEntity> findByCategoryIdOrderByGiaSauAsc(Long id , Pageable pageable);
    List<ItemEntity> findByCategoryIdOrderByGiaSauDesc(Long id , Pageable pageable);
    @Query(value="select * from item where name LIKE %:itemName% limit :l offset :o", nativeQuery = true)
    List<ItemEntity> searchByName(String itemName , int l , int o);
    ItemEntity findItemEntityById(Long id);
    Long countByCategoryId(Long id);
}
