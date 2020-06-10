package com.dulich.service.impl;

import com.dulich.converter.ItemConverter;
import com.dulich.dto.ItemDto;
import com.dulich.entity.ItemEntity;
import com.dulich.repository.ItemRepository;
import com.dulich.service.IItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ItemService implements IItemService
{
    @Autowired
    private ItemRepository itemRepository;
    @Autowired
    private ItemConverter itemConverter;
    @Override
    public List<ItemDto> findAllByWeb(String web)
    {
        List<ItemEntity> items = itemRepository.findAllByWeb(web);
        List<ItemDto> rs = new ArrayList<>();
        for (ItemEntity itemEntity : items)
            rs.add(itemConverter.toDto(itemEntity));
        return rs;
    }

    @Override
    public List<ItemDto> findAllByCategoryId(Long id , Pageable pageable)
    {
        List<ItemEntity> items = itemRepository.findAllByCategoryId(id,pageable);
        List<ItemDto> rs = new ArrayList<>();
        for (ItemEntity itemEntity : items)
            rs.add(itemConverter.toDto(itemEntity));
        return rs;
    }

    @Override
    public Long getTotalPage(Long id) {
        return itemRepository.countByCategoryId(id);
    }
}
