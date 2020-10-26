package com.kg.myapp.bye;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class TimeTracerBye {

	@Around(value="within(com.kg.myapp.bye.IByeService+)" )
	//IByeService+ : byeService 에 걸린거 전부다 건다 
	
	public Object trace(ProceedingJoinPoint jointPoint) throws Throwable {
		//around: 여기 안에서 실행시킨다.
		
		Signature s = jointPoint.getSignature();
		System.out.println("클래스: " + s.getDeclaringTypeName() + ", 메서드: " + s.getName());
		System.out.println("시작 시간: "+new java.util.Date());
		
		long startTime = System.currentTimeMillis();
		Object result = jointPoint.proceed();
		long endTime=System.currentTimeMillis();
		
		System.out.println("시작 시간: "+new java.util.Date());
		System.out.println("클래스: " + s.getDeclaringTypeName()+", 메서드: " + s.getName() + "종료");
		System.out.printf("실행시간: %.4f",(endTime-startTime/1000.0));
		
		return result;
  
		
	}
		
		
	
}
