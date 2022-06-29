package java_0526;

public class father {

	int kor,eng,avg;
	
		public void input(int kor, int eng)
		{
			this.kor=kor;
			this.eng=eng;
		}
		
		
		public void cal()
		{
			avg=(kor+eng)/2;
		}
		
		public void output()
		{
			System.out.println(avg);
		}
	
}
