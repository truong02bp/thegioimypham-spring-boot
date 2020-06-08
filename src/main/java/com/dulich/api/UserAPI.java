package com.dulich.api;

import com.dulich.dto.MyUserDetails;
import com.dulich.dto.UserDto;
import com.dulich.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RestController
public class UserAPI
{
    @Autowired
    private IUserService iuserService;

    @PostMapping("/api-user")
    public UserDto addUser(@RequestBody UserDto userDto, HttpServletResponse response) throws IOException
    {
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        String pass = userDto.getPassword();
        userDto.setPassword(bCryptPasswordEncoder.encode(pass));
        UserDto user = iuserService.save(userDto);
        if (user == null)
            response.sendRedirect("/dang-ky?messenge=tai-khoan-da-ton-tai");
        else
            iuserService.insert(user.getId());
        return user;
    }
}
