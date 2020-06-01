package com.dulich.service;

import com.dulich.entity.UserEntity;

public interface IUserService
{
    UserEntity findByUsername(String username);
}
