package com.dota.gg.aop;

import java.util.Arrays;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LogAop {
	Logger logger = LoggerFactory.getLogger(LogAop.class);
	/**
	   * 描述：切入点
	   * @author: ning.li
	   * @version: 2016年11月21日 下午2:26:28
	 */
	@Pointcut("execution(* com.dota.gg..service.impl.*.*(..))")
	private void anyMethod(){
	}
	
	@Before("anyMethod()")
	public void before(JoinPoint point){
		logger.info("@Before [方法：" + 
                point.getSignature().getDeclaringTypeName() + 
                "." + point.getSignature().getName()+", " + "参数：" + Arrays.toString(point.getArgs()) + "]");
	}
	
	@After("anyMethod()")
	public void after(JoinPoint point){
		logger.info("@After [方法：" + 
                point.getSignature().getDeclaringTypeName() + 
                "." + point.getSignature().getName()+", " + "参数：" + Arrays.toString(point.getArgs()) + "]");
	}
	
	@AfterReturning(pointcut = "anyMethod()", returning = "retVal")
	public void afterReturning(JoinPoint point, Object retVal){
		logger.info("@AfterReturning [方法：" + 
                point.getSignature().getDeclaringTypeName() + 
                "." + point.getSignature().getName()+", 参数：" + Arrays.toString(point.getArgs()) + ", 返回值："+ retVal.toString() + "]");
	}
	
	@AfterThrowing(pointcut = "anyMethod()", throwing = "ex")
	public void afterThrowing(JoinPoint point, Exception ex){
		logger.error("@AfterThrowing [方法：" + 
                point.getSignature().getDeclaringTypeName() + 
                "." + point.getSignature().getName()+", 参数：" + Arrays.toString(point.getArgs()) + ", 异常信息："+ ex.getMessage() + "]");
	}
}
