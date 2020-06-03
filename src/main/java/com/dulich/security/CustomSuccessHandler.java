//package com.dulich.security;
//
//import com.dulich.Utils.SecurityUtils;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.web.DefaultRedirectStrategy;
//import org.springframework.security.web.RedirectStrategy;
//import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.util.List;
//
//public class CustomSuccessHandler implements AuthenticationSuccessHandler
//{
//    private RedirectStrategy strategy = new DefaultRedirectStrategy();
//    @Override
//    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
//                                        Authentication authentication) throws IOException, ServletException
//    {
//        String target = determineTarget();
//        if (httpServletResponse.isCommitted())
//            return ;
//        strategy.sendRedirect(httpServletRequest,httpServletResponse,target);
//    }
//
//    private String determineTarget()
//    {
//        String target = "";
//        List<String> roles = SecurityUtils.getRoles();
//        if (isAdmin(roles))
//            target = "/admin-home";
//        else
//            if (isUser(roles))
//                target = "/trang-chu";
//        return target;
//    }
//    private boolean isAdmin(List<String> roles)
//    {
//        if (roles.contains("ADMIN"))
//            return true;
//        return false;
//    }
//    private boolean isUser(List<String> roles)
//    {
//        if (roles.contains("USER"))
//            return true;
//        return false;
//    }
//
//    public RedirectStrategy getStrategy() {
//        return strategy;
//    }
//
//    public void setStrategy(RedirectStrategy strategy) {
//        this.strategy = strategy;
//    }
//}
package com.dulich.security;

import com.dulich.Utils.SecurityUtils;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Component
public class CustomSuccessHandler extends SimpleUrlAuthenticationSuccessHandler
{
    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
    @Override
    public void handle(HttpServletRequest req , HttpServletResponse resp , Authentication authentication)
            throws IOException
    {
        String targetUrl = determineTargetUrl(authentication);
        if (resp.isCommitted())
            return;
        redirectStrategy.sendRedirect(req,resp,targetUrl);
    }
    private String determineTargetUrl(Authentication authentication)
    {
        String targetUrl = "";
        List<String> roles = SecurityUtils.getRoles();
        if (isUser(roles)==true)
            targetUrl="/trang-chu";
        else
        if (isAdmin(roles))
            targetUrl="/admin-home";
        return targetUrl;
    }

    @Override
    public RedirectStrategy getRedirectStrategy() {
        return redirectStrategy;
    }

    @Override
    public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
        this.redirectStrategy = redirectStrategy;
    }

    private boolean isUser(List<String> roles)
    {
        if (roles.contains("ROLE_USER"))
            return true;
        return false;
    }
    private boolean isAdmin(List<String> roles)
    {
        if (roles.contains("ROLE_ADMIN"))
            return true;
        return false;
    }
}