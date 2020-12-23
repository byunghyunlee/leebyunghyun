package org.edu.aop;

import java.util.Arrays;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

/**
 * DebugAdvice클래스로서 디버그를 Advice라는 AOP기능을 사용해서 디버그를 실행하게 됩니다.
 * @author 이병현
 *
 */
@Component	//스프링bean으로 사용하겠다는 명시
@Aspect	// AOP기능을 사용하겠다는 명시
public class DebugAdvice {
	private static final Logger logger = LoggerFactory.getLogger(DebugAdvice.class);
	/**
	 * @throws Throwable 
	 * @Around 애노테이션클래스는 메서드 실행에 직접 관여함.
	 * Around클래스타입의 파라미터(매개변수)로 proceedingJoinPoint타입의 클래스를 사용하게 된다.
	 * ProceddingJoinPoint클래스는 JpinPoint(실행지점)의 모든 메서드를 가지면서
	 * 직접 타겟클래스의 메서드를 실행 할 수 있는 기능이 있음.
	 * ProceedingJpinPoint.proceed()메서드는 특이하게도 Exception클래스보다 상위로 예외 전달합니다.
	 * 즉, 일반 exception에러처리보다 proceedingJoinPoint.proceed()메서드 먼저 발생 됩니다.
	 * proceed()메서드 생성에 throwable을 사용하고 , 시간을 체크하는 기능을 작성 할수 있다.
	 * 위 시간 체크하는 기능이 필요한 이유는? 개발자가만든 다양한 메서드의 시작과 끝 시간을 체크가 가능하다.
	 * 예를들면, 개발자가 만든 클래스를 실행시켰을떄, 5~10분 이상 느리게 진행되는 현상이 생긴다.
	 * 그래서 해결책으로 어느 메서드에서 시간이 얼만큼 소요되는지 확인해야지만, 트러블슈팅이 가능하다.
	 * 아래 @Around 애노테이션 클래스의 ()는 디버그할 영역지정
	 */
	@Around("execution(* org.edu.controller.AdminController.*(..))")
	public Object timeLog(ProceedingJoinPoint pjp) throws Throwable {
		logger.debug("AOP 디버그 시작 ===============");
		long startTime = System.currentTimeMillis();	//현재컴퓨터시간을 저장하는 변수
		logger.debug(Arrays.toString(pjp.getArgs())); //pjp클래스 매개변수 값 GET으로 가져와서 toString형변환하여 출력
		//하는 이유는 현재 시간체크하는 메서드가 어떤메서드인지 눈으로 확인하려고 logger.debug로 출력(위)
		Object result = pjp.proceed();	//AdminController에 있는 메서드가 실행됩니다.(시간이 소요됨)
		long endTime = System.currentTimeMillis();	//현재 컴퓨터 시간을 저장하는 변수
		logger.debug(pjp.getSignature().getName() + "메서드의 실행시간은:" + (endTime-startTime));
		logger.debug("AOP 디버그 끝 ============");
		return result;
		
	}
}
