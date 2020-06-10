package com.dulich.converter;

import com.dulich.dto.ItemDto;
import com.dulich.entity.ItemEntity;
import org.springframework.stereotype.Component;

@Component
public class ItemConverter
{
    public ItemEntity toEntity(ItemDto itemDto)
    {
        ItemEntity itemEntity = new ItemEntity();
        itemEntity.setCategoryId(itemDto.getCategoryId());
        itemEntity.setName(itemDto.getName());
        itemEntity.setCode(itemDto.getCode());
        itemEntity.setContent(itemDto.getContent());
        itemEntity.setGiaSau(itemDto.getGiaSau());
        itemEntity.setGiaTruoc(itemDto.getGiaTruoc());
        itemEntity.setSale(itemDto.getSale());
        itemEntity.setKhuyenMai(itemDto.getKhuyemai());
        itemEntity.setShortDescription(itemDto.getShortDescription());
        itemEntity.setWeb(itemDto.getWeb());
        itemEntity.setId(itemDto.getId());
        itemEntity.setLink(itemDto.getLink());
        return itemEntity;
    }
    public ItemDto toDto(ItemEntity itemEntity)
    {
        ItemDto itemDto = new ItemDto();
        itemDto.setCategoryId(itemEntity.getCategoryId());
        itemDto.setName(itemEntity.getName());
        itemDto.setCode(itemEntity.getCode());
        itemDto.setContent(itemEntity.getContent());
        itemDto.setGiaSau(itemEntity.getGiaSau());
        itemDto.setGiaTruoc(itemEntity.getGiaTruoc());
        itemDto.setSale(itemEntity.getSale());
        itemDto.setKhuyemai(itemEntity.getKhuyenMai());
        itemDto.setShortDescription(itemEntity.getShortDescription());
        itemDto.setWeb(itemEntity.getWeb());
        itemDto.setId(itemEntity.getId());
        itemDto.setLink(itemEntity.getLink());
        return itemDto;
    }
}
