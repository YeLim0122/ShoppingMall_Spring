package ex04;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class HelloAppSpring {

	public static void main(String[] args) {
		String config = "src/main/java/ex04/appContext.xml";
		ApplicationContext ctx = new FileSystemXmlApplicationContext(config);
		// ㄴ> 스프링 컨테이너
		
		Message msg = ctx.getBean("mb2", Message.class);
		msg.sayHello();
		msg.sayHi("수지", "지은", "태연", "청하");

	}

}
