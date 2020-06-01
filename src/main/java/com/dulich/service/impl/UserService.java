package com.dulich.service.impl;

import com.dulich.entity.UserEntity;
import com.dulich.repository.UserRepository;
import com.dulich.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService implements IUserService
{
    @Autowired
    private UserRepository userRepository;
    @Override
    public UserEntity findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
}
