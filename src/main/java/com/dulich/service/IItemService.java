package com.dulich.service;

import com.dulich.dto.ItemDto;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IItemService
{
    List<ItemDto> findAll(Pageable pageable);
    List<ItemDto> findAllByWeb(String web);
    List<ItemDto> findAllByCategoryId(Long id , Pageable pageable);
    Long getTotalPage(Long id);
    Long getTotalPage();
}
