package com.dulich.converter;

import com.dulich.dto.CategoryDto;
import com.dulich.dto.ItemDto;
import com.dulich.entity.ItemEntity;
import com.dulich.service.ICategoryService;
import com.dulich.ultils.PriceUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ItemConverter
{
    @Autowired
    private ICategoryService iCategoryService;
    public ItemEntity toEntity(ItemDto itemDto)
    {
        ItemEntity itemEntity = new ItemEntity();
        CategoryDto categoryDto = iCategoryService.findOneByName(itemDto.getCategoryName());
        itemEntity.setName(itemDto.getName());
        itemEntity.setCode(itemDto.getCode());
        itemEntity.setContent(itemDto.getContent());
        itemEntity.setGiaSau(PriceUtil.toLong(itemDto.getGiaSau()));
        itemEntity.setGiaTruoc(itemDto.getGiaTruoc());
        itemEntity.setSale(itemDto.getSale());
        itemEntity.setKhuyenMai(itemDto.getKhuyenmai());
        itemEntity.setShortDescription(itemDto.getShortDescription());
        itemEntity.setWeb(itemDto.getWeb());
        itemEntity.setId(itemDto.getId());
        itemEntity.setLink(itemDto.getLink());
        itemEntity.setCategoryId(categoryDto.getId());
        return itemEntity;
    }
    public ItemDto toDto(ItemEntity itemEntity)
    {
        ItemDto itemDto = new ItemDto();
        CategoryDto categoryDto = iCategoryService.findOneById(itemEntity.getCategoryId());
        itemDto.setCategoryId(categoryDto.getId());
        itemDto.setCategoryName(categoryDto.getName());
        itemDto.setCategoryCode(categoryDto.getCode());
        itemDto.setName(itemEntity.getName());
        itemDto.setCode(itemEntity.getCode());
        itemDto.setContent(itemEntity.getContent());
        itemDto.setGiaSau(PriceUtil.toString(itemEntity.getGiaSau()));
        itemDto.setGiaTruoc(itemEntity.getGiaTruoc());
        itemDto.setSale(itemEntity.getSale());
        itemDto.setKhuyenmai(itemEntity.getKhuyenMai());
        itemDto.setShortDescription(itemEntity.getShortDescription());
        itemDto.setWeb(itemEntity.getWeb());
        itemDto.setId(itemEntity.getId());
        itemDto.setLink(itemEntity.getLink());
        return itemDto;
    }
}
