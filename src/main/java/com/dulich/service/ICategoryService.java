package com.dulich.service;

import com.dulich.dto.CategoryDto;

public interface ICategoryService
{
    CategoryDto findOneByCode(String code);
}
