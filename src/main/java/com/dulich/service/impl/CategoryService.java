package com.dulich.service.impl;

import com.dulich.converter.CategoryConverter;
import com.dulich.dto.CategoryDto;
import com.dulich.repository.CategoryRepository;
import com.dulich.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryService implements ICategoryService
{
    @Autowired
    private CategoryRepository categoryRepository;
    @Autowired
    private CategoryConverter categoryConverter;
    @Override
    public CategoryDto findOneByCode(String code)
    {
        return categoryConverter.toDto(categoryRepository.findByCode(code));
    }
}
