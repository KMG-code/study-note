package chapter4;

public class Gugudan {

	public static void main(String[] args) {
		// 구구단만들기
		int dan; // 구구단의 단의수
		int n; // 곱하는 수
		for(dan=2; dan<=9; dan++) {
			for(n=1; n<=9; n++) {
			System.out.println(dan+"X"+n+"="+dan*n);
			if(n==8) break;
			}
		}
	}

}
