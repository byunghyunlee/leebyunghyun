package kr.or.test;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileInputOutput {

	public static void main(String[] args) throws IOException {
		// 내 컴퓨터에 있는 메모장 파일 
		FileInputStream fileInputStream = null;
		FileOutputStream fileOutputStream = null;
		
		try {			
			fileInputStream = new FileInputStream("C:\\egov\\workspace\\leebyunghyun\\leebyunghyun-master\\manifest.yml");
			fileOutputStream = new FileOutputStream("C:\\egov\\workspace\\leebyunghyun\\leebyunghyun-master\\manifest_bak.txt");//신규파일에 저장하는 클래스 명령어 집합
			int byte_content;
			while((byte_content = fileInputStream.read()) !=-1) {
				System.out.print("바이트형 문자 읽어 들이기" + (char)byte_content);
				fileOutputStream.write(byte_content);
			}
		} catch (FileNotFoundException e) {
			System.out.println("경로에서 파일을 찾을수 없습니다." + e.toString());
			e.printStackTrace();
		}
	}

}
