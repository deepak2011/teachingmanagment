package com.tm.aspect;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;

public class LoggingAspect {
	
	private Logger log = Logger.getLogger(getClass());
	
	public void logBefore(JoinPoint joinPoint) {
		log.info(joinPoint.getSignature().getName() + " called...");
	}

	public void logAfter(JoinPoint joinPoint) {
		//..
	}

	public void logAfterReturning(JoinPoint joinPoint, Object result) {
		//...
	}

	public void logAfterThrowing(JoinPoint joinPoint, Throwable error) {
		//...
	}

	public void logAround(ProceedingJoinPoint joinPoint) throws Throwable {
		//...
	}
}
