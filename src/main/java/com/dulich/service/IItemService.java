package com.dulich.service;

import com.dulich.dto.ItemDto;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IItemService
{
    List<ItemDto> findAll(Pageable pageable);
    List<ItemDto> findAllByWeb(String web);
    List<ItemDto> findAllByCategoryId(Long id , Pageable pageable , ItemDto itemDto);
    ItemDto findOne(Long id);
    ItemDto save(ItemDto itemDto);
    List<ItemDto> searchByName(String itemName , int limit , int offset);
    void delete(Long id);
    Long getTotalPage(Long id);
    Long getTotalPage();
}
