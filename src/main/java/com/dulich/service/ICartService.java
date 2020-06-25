package com.dulich.service;

import com.dulich.dto.CartDto;

import java.util.Map;

public interface ICartService
{
    void update(Map<Long, CartDto> carts , Long id);
    void delete(Map<Long, CartDto> carts , Long id);
    void updateQuantity(Map<Long,CartDto> carts , Long id , Long quantity);
}
