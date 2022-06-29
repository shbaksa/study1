package java_file;

import java.io.File;

public class File_Ex {

	public static void main(String[] args) {
			
			File file = new File("C:/users/ezez/zz.txt"); 
			
			/*
			 * System.out.println(file.isDirectory()); System.out.println(file.isFile());
			 * System.out.println(file.exists());
			 * 
			 * String[] str = file.list(); for(int i=0; i < str.length; i++)
			 * System.out.println(str[i]);
			 */
			
			
			File file_1 = new File("C:/users/ezez/zz2.txt"); 
			file.renameTo(file_1);
			//file_1.delete();
 	}

}
