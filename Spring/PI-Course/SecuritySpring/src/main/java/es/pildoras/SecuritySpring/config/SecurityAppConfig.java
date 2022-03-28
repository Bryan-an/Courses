package es.pildoras.SecuritySpring.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;

@Configuration
@EnableWebSecurity
public class SecurityAppConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder auth)
			throws Exception {
		UserBuilder users = User.withDefaultPasswordEncoder();

		auth.inMemoryAuthentication()
				.withUser(users.username("Juan").password("123")
						.roles("administrator"))
				.withUser(
						users.username("Antonio").password("123").roles("user"))
				.withUser(users.username("Ana").password("123").roles("helper"))
				.withUser(users.username("Laura").password("123")
						.roles("administrator"));
	}

}
