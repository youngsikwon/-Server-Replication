package com.example.spring03.auth.interceptor;

import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.RetentionPolicy.CLASS;

import java.lang.annotation.Retention;
import java.lang.annotation.Target;

@Retention(CLASS)
@Target(METHOD)
public @interface Auth {
	
	public enum Role {ADMIN, USER}
	
	//이와 같이  작성하면 메서드 위에 @Auth(role=Role.ADMIN)과 같이 작성 기능
	public Role role() default Role.USER;

}
