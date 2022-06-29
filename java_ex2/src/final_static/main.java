package final_static;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.Scanner;

public class main {

	public static void main(String[] args) {
		
		
		Scanner sc = new Scanner(System.in);
		
		int x = sc.nextInt();
		int y = sc.nextInt();
		int z = sc.nextInt();
		
		LocalDate as = LocalDate.of(x, y, z);
		LocalDate aa = LocalDate.now();
		
        long ab = as.until(aa,ChronoUnit.DAYS);
							
				
		System.out.println(ab);
		
					
	}

}
