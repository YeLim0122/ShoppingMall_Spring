package ex01;

public class HelloApp {

	public static void main(String[] args) {

		// MessageBeanEn mb = new MessageBeanEn();
		MessageBeanKo mb = new MessageBeanKo();
		
		mb.sayHello("��â��");
		/* HelloApp�� MessageBeanEn ��ü�� ���(use)�Ѵ�.
		 * ==> HelloApp�� MessageBeanEn�� ����(dependency)�Ѵ�.
		 * �� ��, ������ �ִ� ��ü�� ���� ���յ��� �߿�
		 * ���յ��� ���ϸ� ���� ��ü�� ��ü�ϰ��� �� �� ������ ���� �� ����.
		 */
	}

}
