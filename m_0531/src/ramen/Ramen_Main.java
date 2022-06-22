package ramen;

public class Ramen_Main {

	public static void main(String[] args) {
		
		Father fa=new Father();
		Mother mo=new Mother();
		Daughter da=new Daughter();
		Son so=new Son();
		
		int su=Ramen.su;
		
		su=fa.get_ramen(su);
		System.out.println(su);
		su=mo.get_ramen(su);
		System.out.println(su);
		su=da.get_ramen(su);
		System.out.println(su);
		su=so.get_ramen(su);
		System.out.println(su);
		
		System.out.println(su);
		

	}

}
