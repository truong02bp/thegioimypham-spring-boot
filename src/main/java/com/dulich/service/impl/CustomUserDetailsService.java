package com.dulich.service.impl;

import com.dulich.converter.UserConverter;
import com.dulich.dto.MyUserDetails;
import com.dulich.dto.UserDto;
import com.dulich.entity.RoleEntity;
import com.dulich.entity.UserEntity;
import com.dulich.repository.RoleRepository;
import com.dulich.repository.UserRepository;
import com.dulich.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class CustomUserDetailsService implements UserDetailsService , IUserService
{
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Override
    public MyUserDetails loadUserByUsername(String username) throws UsernameNotFoundException
    {
        UserEntity userEntity = userRepository.findByUsername(username);
        if (userEntity == null)
            throw new UsernameNotFoundException("User not found");
        List<GrantedAuthority> authorities = new ArrayList<>();
        for (RoleEntity role : userEntity.getRoles())
            authorities.add(new SimpleGrantedAuthority("ROLE_"+role.getCode()));
        MyUserDetails user = new MyUserDetails(userEntity.getUsername() , userEntity.getPassword() ,
                true , true , true , true , authorities);
        user.setFullName(userEntity.getFullname());
        user.setAddress(userEntity.getAddress());
        user.setEmail(userEntity.getEmail());
        return user;
    }
    @Autowired
    private UserConverter userConverter;
    @Override
    @Transactional
    public UserDto save(UserDto userDto)
    {
        UserEntity userEntity = userRepository.findByUsername(userDto.getUsername());
        if (userEntity != null)
            return null;
        List<RoleEntity> list = roleRepository.findAll();
        List<RoleEntity> roles = new ArrayList<>();
        roles.add(list.get(1));
        UserEntity user = userConverter.toEntity(userDto);
        user.setRoles(roles);
        return userConverter.toDto(userRepository.save(user));
    }

    @Override
    public List<UserDto> findAll(Pageable pageable)
    {
        List<UserEntity> users = userRepository.findAll(pageable).getContent();
        List<UserDto> rs = new ArrayList<>();
        for (UserEntity userEntity : users)
            rs.add(userConverter.toDto(userEntity));
        return rs;
    }

    @Override
    public Long getTotalPage() {
        return userRepository.count();
    }
}
