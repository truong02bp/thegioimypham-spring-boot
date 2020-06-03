package com.dulich.security;

import com.dulich.ultils.SecurityUtils;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Component
public class CustomSuccescHandler implements AuthenticationSuccessHandler
{
    private RedirectStrategy strategy = new DefaultRedirectStrategy();
    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
                                        Authentication authentication) throws IOException, ServletException
    {
        if (httpServletResponse.isCommitted())
            return ;
        strategy.sendRedirect(httpServletRequest,httpServletResponse,determineTarget(authentication));
    }
    private String determineTarget(Authentication authentication)
    {
        String target = "";
        List<String> roles = SecurityUtils.getRoles();
        if (isAdmin(roles))
            target = "/admin-home";
        else
        {
            if (isUser(roles))
                target = "/trang-chu";
        }
        return target;
    }

    boolean isUser(List<String> roles)
    {
        if (roles.contains("ROLE_USER"))
            return true;
        return false;
    }
    boolean isAdmin(List<String> roles)
    {
        if (roles.contains("ROLE_ADMIN"))
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
