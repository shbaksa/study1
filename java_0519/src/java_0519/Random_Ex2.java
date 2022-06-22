package java_0519;

import java.util.Random;
import java.util.Scanner;

public class Random_Ex2 {

	public static void main(String[] args) {
		// 6명의 이름을 입력한 후 오늘 밥 살 사람 출력하기
        Scanner sc=new Scanner(System.in);
        String[] name=new String[6];
        
        for(int i=0;i<name.length;i++)
        {
        	name[i]=sc.next();
        }
        
        // 임의의 값을 발생시키기 // 0~5
        Random rand=new Random();
        int n=rand.nextInt(6);
        
        System.out.println(name[n]);
	}

}
