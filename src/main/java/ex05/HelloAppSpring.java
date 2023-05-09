package ex05;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class HelloAppSpring {

	public static void main(String[] args) {
		
		String config="ex05/employee.xml";	// class 파일이 있는 곳에서 찾는다.
		ApplicationContext ctx = new ClassPathXmlApplicationContext(config);
		// ClassPath를 기준으로 설정 파일을 찾는 스프링 컨테이너
		
		Emp e = ctx.getBean("e3", Emp.class);
		// e.info1();
		e.info2();
		System.out.println("------------------------------------");
		
		ctx.getBean("e4", Emp.class).info3();
		System.out.println("------------------------------------");
		
		ctx.getBean("e5", Emp.class).info4();
	}

}
