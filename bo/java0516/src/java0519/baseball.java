package java0519;

import java.util.Arrays;
import java.util.Random;
import java.util.Scanner;

public class baseball {

	public static void main(String[] args) {


		Random bb = new Random();
		Scanner sc = new Scanner(System.in);
		
		int com1=0,com2=0,com3=0;
		int num1=0,num2=0,num3=0;
	
		
		com1 = bb.nextInt(9)+1;
		com2 = bb.nextInt(9)+1;
		
		while(com1 == com2)
		{
			com2 = bb.nextInt(9)+1;
		}
			
		com3 = bb.nextInt(9)+1;
		
		while(com1 == com3 || com2 == com3)
		{
			com3 = bb.nextInt(9)+1;
		}
			
		//System.out.println("정답은 = " + com1 +"" + com2 +""+ com3);
		
		int[] usernum = new int[3];
		
		
		System.out.println("숫자 3개를 입력하세요.");	
		
			
		while(true) {
		for(int i=0; i<3; i++)
		{
			usernum[i] = sc.nextInt();
		/*	for(int j=0; j<i; j++)
			if(usernum[j] > 9 )
			{
				System.out.println("9이하로 입력하세요");
			}*/
		}
		int scount = 0,bcount =0;
		if(usernum[0] == usernum[1] || usernum[0] == usernum[2] || usernum[1] == usernum[2])
		{
			System.out.println("중복된 숫자를 입력하셨습니다. 다시입력하세요.");
			
		}
		else
		{	
				System.out.println("입력한 숫자 = " + Arrays.toString(usernum));
		
				
				if(usernum[0] == com1 && usernum[1] == com2 && usernum[2] == com3)
				{
					System.out.println("홈런입니다");
					break;
				}
				if(usernum[0] == com1) 
				{
					scount++;
				}	
				if(usernum[1] == com2)
				{
					scount++;
				}
				if(usernum[2] == com3)
				{
					scount++;
				}
				if(usernum[0] == com2)
				{
					bcount++;
				}
				if(usernum[0] == com3)
				{
					bcount++;
				}
				if(usernum[1] == com1)
				{
					bcount++;
				}
				if(usernum[1] == com3)
				{
					bcount++;
				}
				if(usernum[2] == com1)
				{
					bcount++;
				}
				if(usernum[2] == com2)
				{
					bcount++;
				}
				System.out.println(scount + "스트라이크" + bcount + "볼");
				System.out.println("다시 입력하세요.");
		}
	}
 }
		
}
	
	
