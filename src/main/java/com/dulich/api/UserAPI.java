package com.dulich.api;

import com.dulich.dto.MyUserDetails;
import com.dulich.dto.UserDto;
import com.dulich.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@RestController
public class UserAPI
{
    @Autowired
    private IUserService iuserService;

    @GetMapping("/api-user/get")
    public ResponseEntity<List<UserDto>> getUser()
    {
        List<UserDto> list = iuserService.findAll();
        return ResponseEntity.ok(list);
    }
    @PostMapping("/api-user")
    public UserDto addUser(@RequestBody UserDto userDto) throws IOException
    {
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        String pass = userDto.getPassword();
        userDto.setPassword(bCryptPasswordEncoder.encode(pass));
        UserDto user = iuserService.save(userDto);
        return user;
    }
}
