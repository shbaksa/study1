package first;

public class MyInfo {
    private String hakbun;
    private String name;
    private int age;
    private String phone;
    private int number;
    
    // setter
    public void setHakbun(String hakbun)
    {
    	this.hakbun=hakbun;
    }
    // getter
    public String getHakbun()
    {
    	return hakbun;
    }
	public String getName() 
	{
		return name;
	}
	public void setName(String name) 
	{
		this.name = name;
	}
	public int getAge() 
	{
		return age;
	}
	public void setAge(int age) 
	{
		this.age = age;
	}
	public String getPhone() 
	{
		return phone;
	}
	public void setPhone(String phone)
	{
		this.phone = phone;
	}
	public int getNumber()
	{
		return number;
	}
	public void setNumber(int number) 
	{
		this.number = number;
	}
    
     
    
    /*
    많은 속성들에 접근하는 메소드명칭문제 발생
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
