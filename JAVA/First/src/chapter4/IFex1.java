package chapter4;

public class IFex1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int age = 7;
		if(age>=8) {
			System.out.println("학교에 다닙니다");
		}
		else {
			System.out.println("학교에 다니지 않습니다");
		}
		char gender = 'F';
		if(gender == 'F') {
			System.out.println("여성입니다");
		}
		else//제어문에 코드가 한줄 일 경우 중괄호 생략가능
			System.out.println("남성입니다");
	}

}
