package chapter4;

public class WhileEx1_1 {

	public static void main(String[] args) {
		
		int num = 1;
		int sum = 0;
		
		while(num<=50) {
			sum+=num;
			num++;
		}
		System.out.println("1부터50까지의 합은"+sum+"입니다");

	}
	

}
