package array_ex;

public class Array_Ex {

	public static void main(String[] args) {
		
		// 1차원 배열	
		int[] num=new int[5];
		
		// 2차원 배열
		int[][] arr=new int[5][5];
		
		// 행 => 0~4
		int k=1;
		for(int i=0;i<5;i++) {
			
			for(int j=0;j<5;j++) {
				 
				arr[i][j]= k++;
			}
		}
		// i=0일때 [0][0] , [0][1] , [0][2] , [0][3] , [0][4]
		// i=1일때 [1][0] , [1][1] , [1][2] , [1][3] , [1][4]
		// i=2일때 [2][0] , [2][1] , [2][2] , [2][3] , [2][4]
		// i=3일때 [3][0] , [3][1] , [3][2] , [3][3] , [3][4]
		// i=4일때 [4][0] , [4][1] , [4][2] , [4][3] , [4][4]
		
		for(int i=0;i<5;i++) {
			
			for(int j=0;j<5;j++) {
				 
				System.out.print(arr[i][j]);
			}
			System.out.println();
		}
		
		
		// https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=wjddudgns514&logNo=221321496280 마방진 참고
		
		for(int i=0;i<5;i++) {
			
			for(int j=0;j<5;j++) {
				
			}
		}
		
	}

}
