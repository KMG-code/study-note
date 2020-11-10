package chapter4;

import java.util.Scanner;

public class SwichcaseEx1 {

	public static void main(String[] args) {
	

		//사용자 입력을 받는 스캐너 클래스
	Scanner scanner = new Scanner(System.in);
	System.out.println("층을 입력해 주세여: ");
	//scanner.next();
		
		String floor;
		floor = scanner.next(); // 사용자가 입력한 값을 저장한다
		
		switch(floor) {
		case "5층" :System.out.println("헬스 클럽입니다");
		break;
		case "4층" :System.out.println("치과입니다");
		break;
		case "3층" :System.out.println("피부과입니다");
		break;
		case "2층" :System.out.println("정형외과입니다");
		break;
		case "1층" :System.out.println("약국입니다");
		break;
		default: System.out.println("층없음");
		
		}
		
	}
}

