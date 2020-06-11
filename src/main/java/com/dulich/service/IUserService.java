package com.dulich.service;

import com.dulich.dto.UserDto;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface IUserService
{
    UserDto save(UserDto userDto);
    void insert(Long id);
    List<UserDto> findAll();
}
