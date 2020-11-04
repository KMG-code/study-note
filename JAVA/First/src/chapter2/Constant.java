package chapter2;

public class Constant {

	public static void main(String[] args) {
		// 상수는 변하지 않는 값 + fianl, 대문자들로 표기
		final int MAX_NUM = 100;
		final double PI = 3.14;
		
		//MAX_NUM = 200; 상수는 값을 바꿀 수 없다.
		System.out.println(MAX_NUM);
		System.out.println(PI);
	}

}
