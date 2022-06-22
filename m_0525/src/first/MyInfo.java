package first;

public class MyInfo {
	// private에 값을 넣고 싶으면 public 메소드를 이용해서 값을 넣어보자
	private String hakbun;
	private String name;
	private int age;
	private String phone;
	private int number;
	
	// setter set(첫자리 대문자)인 변수
	public void setHakbun(String hakbun)
	{
		this.hakbun=hakbun;
	}
	// getter get(첫자리 대문자)인 변수
	public String getHakbun()
	{
		return hakbun;
	}
	// 나머지 변수도 set,get 을 이용해 메소드를 만들자
	public void setName(String name)
	{
		this.name=name;
	}
	public String getName()
	{
		return name;
	}
	public void setAge(int age)
	{
		this.age=age;
	}
	public int getAge()
	{
		return age;
	}
	public void setPhong(String phone)
	{
		this.phone=phone;
	}
	public String getPhone()
	{
		return phone;
	}
	public void setNumber(int number)
	{
		this.number=number;
	}
	public int getNumber()
	{
		return number;
	}
	
	/*
	많은 속성들에 접근하는 메소드명칭문제 발생 <= setter,getter 로 많은 메소드를 줄인다
	public void a1(String hakbun)
	{
		this.hakbun=hakbun;
	}
	public String b1()
	{
		return hakbun;
	}
	*/

}
