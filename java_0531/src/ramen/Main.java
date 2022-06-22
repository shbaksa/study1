package ramen;

public class Main {

	public static void main(String[] args) {
		 
		Father f=new Father();
		Mother m=new Mother();
		Daughter d=new Daughter();
		Son s=new Son();
		
		int su=Ramen.su;
		su=f.get_ramen(su);
		System.out.println(su);
		su=m.get_ramen(su);
		System.out.println(su);
		su=d.get_ramen(su);
		System.out.println(su);
		su=s.get_ramen(su);
		System.out.println(su);
		
		System.out.println(su);
	}

}
