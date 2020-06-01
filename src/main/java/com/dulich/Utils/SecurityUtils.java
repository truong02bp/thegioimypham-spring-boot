package com.dulich.Utils;

import com.dulich.dto.UserDto;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.ArrayList;
import java.util.List;

public class SecurityUtils
{
    public static UserDto getPrincial()
    {
        return (UserDto) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    }
    public static List<String> getRoles()
    {
        List<String> roles = new ArrayList<>();
        List<GrantedAuthority> grantedAuthorities = (List<GrantedAuthority>) SecurityContextHolder.getContext()
                .getAuthentication().getAuthorities();
        for (GrantedAuthority grantedAuthority : grantedAuthorities)
            roles.add(grantedAuthority.getAuthority());
        return roles;
    }
}
