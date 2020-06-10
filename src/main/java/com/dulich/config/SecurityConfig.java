package com.dulich.config;

import com.dulich.security.CustomSuccessHandler;
import com.dulich.service.impl.CustomUserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter
{
    @Autowired
    private CustomUserDetailsService customUserDetailsService;

    @Bean
    public BCryptPasswordEncoder passwordEncoder() // passwordEncoder is enabled
    {
        return new BCryptPasswordEncoder();
    }

//    @Bean
//    public static NoOpPasswordEncoder passwordEncoder() // passwordEncoder is disable
//    {
//        return (NoOpPasswordEncoder) NoOpPasswordEncoder.getInstance();
//    }
    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception
    {
        auth.userDetailsService(customUserDetailsService).passwordEncoder(passwordEncoder()); // passwordEncoder is enabled
//        auth.userDetailsService(customUserDetailsService); // passwordEncoder is disable
    }
    @Override
    protected void configure(HttpSecurity http) throws Exception
    {
        http.csrf().disable()
            .authorizeRequests()
                .antMatchers("/admin*").hasRole("ADMIN")
                .antMatchers("/*").permitAll()
                .and()
                .formLogin()
                .loginProcessingUrl("/j_spring_security_check")
                .loginPage("/dang-nhap")
                .successHandler(new CustomSuccessHandler())
                .failureUrl("/dang-nhap?error")
                .usernameParameter("username").passwordParameter("password")
                .and().exceptionHandling().accessDeniedPage("/dang-nhap")
                .and().logout().logoutUrl("/j_spring_security_logout").logoutSuccessUrl("/dang-nhap?message=logout");
    }
}
