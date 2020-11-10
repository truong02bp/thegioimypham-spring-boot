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
    @Query(value="select * from item where categoryid = :categoryId and giasau between :min and :max order by giasau desc limit :limit offset :offset" , nativeQuery = true)
    List<ItemEntity> findByCategoryIdAndBetweenOrderByGiaSauDesc(Long categoryId , Long min , Long max , int limit , int offset);
    @Modifying
    @Query(value="select * from item where categoryid = :categoryId and giasau between :min and :max order by giasau Asc limit :limit offset :offset", nativeQuery = true)
    List<ItemEntity> findByCategoryIdAndBetweenOrderByGiaSauAsc(Long categoryId , Long min , Long max , int limit , int offset);
    @Query(value="select * from item where categoryid = :categoryId and giasau between :min and :max limit :limit offset :offset", nativeQuery = true)
    List<ItemEntity> findByCategoryIdAndBetween(Long categoryId , Long min , Long max , int limit , int offset);
    ItemEntity findItemEntityById(Long id);
    Long countByCategoryId(Long id);
}
