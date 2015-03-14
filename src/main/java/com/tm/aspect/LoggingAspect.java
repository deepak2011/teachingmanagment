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
		log.info(joinPoint.getSignature().getName() + " called...");
	}

	public void logAfterReturning(JoinPoint joinPoint, Object result) {
		log.info(joinPoint.getSignature().getName() + " called...");
	}

	public void logAfterThrowing(JoinPoint joinPoint, Throwable error) {
		log.info(joinPoint.getSignature().getName() + " called...");
	}

	public void logAround(ProceedingJoinPoint joinPoint) throws Throwable {
		log.info(joinPoint.getSignature().getName() + " called...");
	}
}
