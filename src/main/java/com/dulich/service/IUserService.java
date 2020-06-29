package com.dulich.service;

import com.dulich.dto.UserDto;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface IUserService
{
    UserDto save(UserDto userDto);
    List<UserDto> findAll(Pageable pageable);
    Long getTotalPage();
}
