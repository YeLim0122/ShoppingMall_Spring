package ex05;

import java.util.Random;

public class Empimpl implements Emp {
	
	// property
	private String dept;
	private String name;
	private int sal;
	private Random ran;
	
	public Empimpl() {
		
	}
	
	public Empimpl(String name) {
		this.name=name;
	}
	
	public Empimpl(Random ran) {
		this.ran=ran;
	}
	
	public Empimpl(String d, String n) {
		dept = d;
		name = n;
	}
	
	public Empimpl(String d, String n, int s) {
		dept = d;
		name = n;
		sal = s;
	}

	@Override
	public void info1() {
		System.out.println("Name: "+name);

	}

	@Override
	public void info2() {
		this.info1();	// 이름
		System.out.println("Dept: "+dept);

	}

	@Override
	public void info3() {
		this.info2();	// 이름, 부서
		System.out.println("Sal: "+sal);

	}

	@Override
	public void info4() {
		System.out.println("Lucky Number: "+ran.nextInt(100));

	}

}
