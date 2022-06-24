package java_file;

import java.io.File;

public class File_Ex {
	
	public static void main(String[] args) {
		
		File file = new File("c:/windows"); // 생성자에는 폴더나 파일을 인수로 전달
		
		System.out.println(file.isDirectory());
		System.out.println(file.isFile());
		System.out.println(file.exists());
		String[] temp = file.list();
		
		for(int i=0;i<=temp.length;i++) 
			System.out.println(temp[i]);
		
	}
}
