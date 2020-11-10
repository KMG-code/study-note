package chapter4;

public class ContinueEx1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int total = 0;
		int num;
		
		for(num=1; num<=100; num++) {
			if(num%2 ==0) continue;
			//이후 문장 실행하지 않고 반복문 증감으로 돌아감
			total += num;
			if(num==51) break;// break 반복문 중지,가장 가까운 반복문 하나만 빠져나옴
		}
		System.out.println("1부터100까지 홀수의 합은"+total+"입니다");
	}

}
