package com.dulich.service;

import com.dulich.dto.CategoryDto;
import com.dulich.entity.CategoryEntity;

import java.util.Map;

public interface ICategoryService
{
    Map<String,String> findAll();
    CategoryDto findOneById(Long id);
    CategoryDto findOneByCode(String code);
    CategoryDto findOneByName(String name);
}
