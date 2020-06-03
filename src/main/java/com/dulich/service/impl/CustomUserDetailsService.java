package com.dulich.service.impl;

import com.dulich.dto.UserDto;
import com.dulich.entity.RoleEntity;
import com.dulich.entity.UserEntity;
import com.dulich.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
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
    public UserDto loadUserByUsername(String username) throws UsernameNotFoundException
    {
        UserEntity userEntity = userRepository.findByUsername(username);
        if (userEntity == null)
            throw new UsernameNotFoundException("User not found");
        List<GrantedAuthority> authorities = new ArrayList<>();
        for (RoleEntity role : userEntity.getRoles())
            authorities.add(new SimpleGrantedAuthority("ROLE_"+role.getCode()));
        UserDto user = new UserDto(userEntity.getUsername() , userEntity.getPassword() ,
                true , true , true , true , authorities);
        user.setFullName(userEntity.getFullname());
        return user;
    }
}
