package org.spring.security.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;

@Configuration
@EnableWebSecurity
public class DemoSecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
		// add users for in memory authentication
		
		UserBuilder users = User.withDefaultPasswordEncoder();
		
		auth.inMemoryAuthentication()
			.withUser(users.username("islam").password("test123").roles("EMPLOYEE"))
			.withUser(users.username("admin").password("test123").roles("EMPLOYEE", "ADMIN"))
			.withUser(users.username("manager").password("test123").roles("EMPLOYEE", "MANAGER"));
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.authorizeRequests()
			
		.antMatchers("/").hasAnyRole("EMPLOYEE", "ADMIN", "MANAGER")
		.antMatchers("/leaders/**").hasAnyRole("ADMIN")
		.antMatchers("/system").hasRole("MANAGER")
		
			.anyRequest().authenticated()   // any request should be authenticated
			.and()
				.formLogin()					// configure the custom login page
					.loginPage("/login")			// redirect to this path for custom login page
					.loginProcessingUrl("/authenticateTheUser")	// login page action 
					.permitAll()			// any one can access login page without authentication
			.and()
				.logout()					// add support to default logout url "/logout"
				.permitAll();
				
			
	}
	
	

	
}
