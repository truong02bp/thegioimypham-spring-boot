package com.dulich.converter;

import com.dulich.dto.UserDto;
import com.dulich.entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class UserConverter
{
    public UserDto toDto(UserEntity userEntity)
    {
        List<GrantedAuthority> authorities = new ArrayList<>();
        UserDto user = new UserDto();
        user.setId(userEntity.getId());
        user.setUsername(userEntity.getUsername());
        user.setPassword(userEntity.getPassword());
        user.setEmail(userEntity.getEmail());
        user.setAddress(userEntity.getAddress());
        user.setFullName(userEntity.getFullname());
        user.setRoles(RoleConverter.toDto(userEntity.getRoles()));
        user.setPhone(userEntity.getPhone());
        user.setCreatedBy(userEntity.getCreatedBy());
        user.setCreatedDate(userEntity.getCreatedDate());
        user.setModifiedBy(userEntity.getModifiedBy());
        user.setCreatedDate(userEntity.getModifiedDate());
        return user;
    }
    public UserEntity toEntity(UserDto userDto)
    {
        UserEntity userEntity = new UserEntity();
        userEntity.setAddress(userDto.getAddress());
        userEntity.setUsername(userDto.getUsername());
        userEntity.setPassword(userDto.getPassword());
        userEntity.setEmail(userDto.getEmail());
        userEntity.setFullname(userDto.getFullName());
        userEntity.setPhone(userDto.getPhone());
        return userEntity;
    }
}
