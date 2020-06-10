package com.dulich.converter;

import com.dulich.dto.CategoryDto;
import com.dulich.entity.CategoryEntity;
import org.springframework.stereotype.Component;

@Component
public class CategoryConverter
{
    public CategoryEntity toEntity(CategoryDto categoryDto)
    {
        CategoryEntity categoryEntity = new CategoryEntity();
        categoryEntity.setId(categoryDto.getId());
        categoryEntity.setCode(categoryDto.getCode());
        categoryEntity.setName(categoryDto.getName());
        return categoryEntity;
    }
    public CategoryDto toDto(CategoryEntity categoryEntity)
    {
        CategoryDto categoryDto = new CategoryDto();
        categoryDto.setId(categoryEntity.getId());
        categoryDto.setCode(categoryEntity.getCode());
        categoryDto.setName(categoryEntity.getName());
        return categoryDto;
    }
}
