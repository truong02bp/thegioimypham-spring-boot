package com.dulich.security;

import com.dulich.Utils.SecurityUtils;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class CustomSuccessHandler implements AuthenticationSuccessHandler
{
    private RedirectStrategy strategy = new DefaultRedirectStrategy();
    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
                                        Authentication authentication) throws IOException, ServletException
    {
        String target = determineTarget();
        if (httpServletResponse.isCommitted())
            return ;
        strategy.sendRedirect(httpServletRequest,httpServletResponse,target);
    }

    private String determineTarget()
    {
        String target = "";
        List<String> roles = SecurityUtils.getRoles();
        if (isAdmin(roles))
            target = "/admin-home";
        else
            if (isUser(roles))
                target = "/trang-chu";
        return target;
    }
    private boolean isAdmin(List<String> roles)
    {
        if (roles.contains("ADMIN"))
            return true;
        return false;
    }
    private boolean isUser(List<String> roles)
    {
        if (roles.contains("USER"))
            return true;
        return false;
    }

    public RedirectStrategy getStrategy() {
        return strategy;
    }

    public void setStrategy(RedirectStrategy strategy) {
        this.strategy = strategy;
    }
}
