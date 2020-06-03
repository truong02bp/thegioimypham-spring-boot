package com.dulich.ultils;


import com.dulich.dto.UserDto;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.ArrayList;
import java.util.List;

public class SecurityUtils
{
    public static UserDto getPrincipal()
    {
        return (UserDto) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    }
    public static List<String> getRoles()
    {
        List<String> roles=  new ArrayList<>();
        List<GrantedAuthority> authorities = (List<GrantedAuthority>) SecurityContextHolder.getContext()
                .getAuthentication().getAuthorities();
        for (GrantedAuthority authority : authorities)
            roles.add(authority.getAuthority());
        return roles;
    }
}
