package ex01;

public class HelloApp {

	public static void main(String[] args) {

		// MessageBeanEn mb = new MessageBeanEn();
		MessageBeanKo mb = new MessageBeanKo();
		
		mb.sayHello("임창균");
		/* HelloApp이 MessageBeanEn 객체를 사용(use)한다.
		 * ==> HelloApp이 MessageBeanEn에 의존(dependency)한다.
		 * 이 때, 의존성 있는 객체들 간의 결합도가 중요
		 * 결합도가 강하면 향후 객체를 교체하고자 할 때 문제가 생길 수 있음.
		 */
	}

}
