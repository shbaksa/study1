package java_05251;

public class father {

		
		private int kor,eng,mat,hap,avg;
		private String num;		
		
		public void input(int x, int y, int z)
		{
			kor = x;
			eng = y;
			mat = z;
		}
		
		public void cal()
		{
			hap = kor+eng+mat;
			avg = hap/3;
		}
		
		public int output1()
		{
			return hap;
		}
		public int output2()
		{
			return avg;
		}
		
		
		public void setNum(String num)
		{
			this.num=num;
		}
		public String getNum()
		{
			return num;
		}

		public int getKor() {
			return kor;
		}

		public void setKor(int kor) {
			this.kor = kor;
		}

		public int getEng() {
			return eng;
		}

		public void setEng(int eng) {
			this.eng = eng;
		}

		public int getMat() {
			return mat;
		}

		public void setMat(int mat) {
			this.mat = mat;
		}

		public int getHap() {
			return hap;
		}

		public void setHap(int hap) {
			this.hap = hap;
		}

		public int getAvg() {
			return avg;
		}

		public void setAvg(int avg) {
			this.avg = avg;
		}
		
		
			
}
