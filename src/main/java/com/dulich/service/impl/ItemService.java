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
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
    public List<ItemDto> findAll(Pageable pageable) {
        List<ItemEntity> items = itemRepository.findAll(pageable).getContent();
        List<ItemDto> rs = new ArrayList<>();
        for (ItemEntity itemEntity : items)
            rs.add(itemConverter.toDto(itemEntity));
        return rs;
    }

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
    public List<ItemDto> findAllByCategoryId(Long id , Pageable pageable,String sort)
    {
        List<ItemEntity> items = new ArrayList<>();
        if (sort.equals("desc"))
           items = itemRepository.findByCategoryIdOrderByGiaSauDesc(id,pageable);
        else
            if (sort.equals("asc"))
                items = itemRepository.findByCategoryIdOrderByGiaSauAsc(id,pageable);
            else
                items = itemRepository.findAllByCategoryId(id,pageable);
        List<ItemDto> rs = new ArrayList<>();
        for (ItemEntity itemEntity : items)
            rs.add(itemConverter.toDto(itemEntity));
        return rs;
    }

    @Override
    public ItemDto findOne(Long id)
    {
        return itemConverter.toDto(itemRepository.findItemEntityById(id));
    }

    @Override
    @Transactional
    public ItemDto save(ItemDto itemDto)
    {
        ItemEntity entity = itemConverter.toEntity(itemDto);
        if (itemDto.getId() == null)
            return itemConverter.toDto(itemRepository.save(entity));
        else
        {
            entity.setId(itemDto.getId());
            return itemConverter.toDto(itemRepository.save(entity));
        }

    }

    @Override
    public List<ItemDto> searchByName(String itemName , int limit , int offset) {
        List<ItemEntity> entities = itemRepository.searchByName(itemName,limit,offset);
        List<ItemDto> rs = new ArrayList<>();
        for (ItemEntity itemEntity : entities)
            rs.add(itemConverter.toDto(itemEntity));
        return rs;
    }

    @Override
    @Transactional
    public void delete(Long id) {
        itemRepository.deleteById(id);
    }

    @Override
    public Long getTotalPage(Long id) {
        return itemRepository.countByCategoryId(id);
    }

    @Override
    public Long getTotalPage() {
        return itemRepository.count();
    }
}
