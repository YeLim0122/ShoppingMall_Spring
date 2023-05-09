package ex03;
import org.springframework.context.*;
import org.springframework.context.support.*;

// IoC(Inversion of Control): ������-������� �����������̳ʰ� ���´�.

// ������ �����̳ʴ� ��������(applicationContext.xml)�̳� ������̼��� �о 
// ��ü�� �޸𸮿� �ø���.

public class HelloApp {

	public static void main(String[] args) {

		String config="src/main/java/ex03/applicationContext.xml";

		// ������ �����̳�
		ApplicationContext ctx = new FileSystemXmlApplicationContext(config);
		
		// DL(Dependency Lookup): �޸𸮿� �ö� ��ü�� �̸����� ã�� ��
		MessageBean mb = (MessageBean)ctx.getBean("mbEn");
		mb.sayHello("BTOB");
		
	}

}
