package date;

import java.util.Date;

public class Date_Ex {

	public static void main(String[] args) {
		 // Date 클래스
         Date today=new Date();
         
         int year=today.getYear()+1900; // 년도를 가져와서 리턴해주는 메소드 => 1900년 부터 시작
         int month=today.getMonth()+1; // 월을 가져와서 리턴해주는 메소드 (0~11)
         int day=today.getDate(); // 일을 가져와서 리턴해주는 메소드
         
         System.out.println(year+"년 "+month+"월 "+day+"일");
         
         int hour=today.getHours(); // 현재 시를 리턴해주는 메소드
         int min=today.getMinutes(); // 현재 분을 리턴해주는 메소드
         int sec=today.getSeconds(); // 현재 초를 리턴해주는 메소드
         
         System.out.println(hour+"시 "+min+"분 "+sec+"초");
         
         int yoil=today.getDay(); // 현재 요일을 리턴해주는 메소드  0~6까지
         char y;
         switch(yoil)
         {
            case 0: y='일'; break;
            case 1: y='월'; break;
            case 2: y='화'; break;
            case 3: y='수'; break;
            case 4: y='목'; break;
            case 5: y='금'; break;
            case 6: y='토'; break;
            default: y='X';
         }
         System.out.println(y+"요일입니다"); // 출력을 수요일로 출력을 해보세요
	}

}
