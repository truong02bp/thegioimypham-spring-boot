package com.dulich.service.impl;

import com.dulich.dto.UserDto;
import com.dulich.entity.RoleEntity;
import com.dulich.entity.UserEntity;
import com.dulich.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CustomUserDetailsService implements UserDetailsService
{
    @Autowired
    private UserRepository userRepository;
    @Override
    public UserDto loadUserByUsername(String s) throws UsernameNotFoundException
    {
        UserEntity userEntity = userRepository.findByUsername(s);
        List<GrantedAuthority> grantedAuthorities = new ArrayList<>();
        for (RoleEntity role : userEntity.getRoles())
            grantedAuthorities.add(new SimpleGrantedAuthority(role.getCode()));
        UserDto userDto = new UserDto(userEntity.getUsername() , userEntity.getPassword() , true
        ,true , true , true , grantedAuthorities);
        userDto.setFullName(userEntity.getFullname());
        return userDto;
    }
}
