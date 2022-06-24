package java_file;

import java.io.File;

public class File_Ex2 {

	public static void main(String[] args) {
		
		File file = new File("C:/Users/EZEZ/File_Ex.java");
		
		// file의 이름을 변경
		File file2 = new File("C:/Users/EZEZ/7777.java");
		file.renameTo(file2);
		
		// file의 삭제
		// file2.delete();
		
		System.out.println(file.exists());
		System.out.println(file2.exists());
		
		System.out.println(file2.length()); // 파일크기
		
		if(file2.exists()) // 존재하면 true, 없으면 false
			file2.delete();
		
		
		
	}

}
