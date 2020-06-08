package com.dulich.controller.web;

import com.dulich.dto.MyUserDetails;
import com.dulich.dto.UserDto;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class AccountController
{
    @GetMapping("/thong-tin-ca-nhan")
    public ModelAndView account()
    {
        ModelAndView mav = new ModelAndView("web/accountDetails");
        return mav;
    }
    @GetMapping("/dang-ky")
    public ModelAndView register()
    {
        ModelAndView mav = new ModelAndView("web/register");
        UserDto model = new UserDto();
        mav.addObject("model",model);
        return mav;
    }
}
