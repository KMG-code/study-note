package chapter4;

public class WhileEx1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int num = 1;
		int sum = 0;
		
		while(num <= 10) {
			sum += num; // sum= sum+num
			System.out.println("sum:"+sum);
			num++;//num = num+1
			System.out.println("num"+num);
		}
		System.out.println("1부터10까지의 합은"+sum+"입니다");

	}
	

}
