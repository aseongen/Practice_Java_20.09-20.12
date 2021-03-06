package com.kg.myapp;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LogAspect {

	@Pointcut(value="execution(* com.kg.myapp.HelloController.sayHello(..))" )
	private void helloPointcut() {} // pointcut 이 helloPointcut을 호출
	
	@Pointcut(value="execution(* com.kg.myapp.bye.ByeService.byeHello(..))" )
    private void goodbyePointcut() {}
	
	
	@Before("helloPointcut()")
	public void beforeLog(JoinPoint joinPoint) {
		
		Signature s = joinPoint.getSignature();
		System.out.println("클래스: " + s.getDeclaringTypeName() + ", 메서드: " + s.getName() + " 시작");
	}
	
	@After("helloPointcut()")
	public void AfterLog(JoinPoint joinPoint) {
		
		Signature s = joinPoint.getSignature();
		System.out.println("클래스: " + s.getDeclaringTypeName()+", 메서드: " + s.getName() + "종료");
	}
	
}
