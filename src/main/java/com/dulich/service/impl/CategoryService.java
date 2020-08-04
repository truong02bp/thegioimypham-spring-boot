package com.dulich.service.impl;

import com.dulich.converter.CategoryConverter;
import com.dulich.dto.CategoryDto;
import com.dulich.repository.CategoryRepository;
import com.dulich.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CategoryService implements ICategoryService
{
    @Autowired
    private CategoryRepository categoryRepository;
    @Autowired
    private CategoryConverter categoryConverter;

    @Override
    public Map<String, String> findAll() {
        Map<String,String> rs = new HashMap<>();
        List<String> names = categoryRepository.findName(); // Get all value of column name ( category )
        for (String name : names)
            rs.put(name,name);
        return rs;
    }

    @Override
    public CategoryDto findOneById(Long id)
    {
        // get one object from table table by id
        return categoryConverter.toDto(categoryRepository.findCategoryEntityById(id));
    }
    @Override
    public CategoryDto findOneByCode(String code)
    {
        return categoryConverter.toDto(categoryRepository.findByCode(code));
    }

    @Override
    public CategoryDto findOneByName(String name) {
        return categoryConverter.toDto(categoryRepository.findByName(name));
    }

}
