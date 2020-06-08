package com.dulich.converter;

import com.dulich.dto.RoleDto;
import com.dulich.entity.RoleEntity;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class RoleConverter
{
    public static List<RoleDto> toDto(List<RoleEntity> roles)
    {
        List<RoleDto> rs = new ArrayList<>();
        for (RoleEntity roleEntity : roles)
        {
            RoleDto roleDto = new RoleDto();
            roleDto.setId(roleEntity.getId());
            roleDto.setCode(roleEntity.getCode());
            roleDto.setName(roleEntity.getName());
            rs.add(roleDto);
        }
        return rs;
    }
    public static List<RoleEntity> toEntity(List<RoleDto> roles)
    {
        List<RoleEntity> roleEntities = new ArrayList<>();
        for (RoleDto roleDto : roles)
        {
            RoleEntity roleEntity = new RoleEntity();
            roleEntity.setCode(roleDto.getCode());
            roleEntity.setName(roleDto.getName());
            roleEntities.add(roleEntity);
        }
        return roleEntities;
    }
}
