package chapter4;

public class Practice {

	public static void main(String[] args) {
		//Q1
		int num = 10;
		int num2 = 2;
		char operator = '+';
		
		if(operator == '+') 
			System.out.println(num+num2);
		else if(operator == '-') 
			System.out.println(num-num2);
		else if(operator == '*')
			System.out.println(num*num2);
		else if(operator == '/')
			System.out.println(num/num2);
		
		//Q2
		int x; //´Ü
		int y; // °öÇÏ´Â ¼ö
		for(x=2; x<=9; x++) {
			if(x%2!=0)continue;
			for(y=1; y<=9; y++) {
				System.out.println(x+"X"+y+"="+x*y);
		}
		}
		
		//Q3
		for(x=2; x<=9; x++) {
			for(y=1; y<=9; y++) {
				if(x<y)break;
				System.out.println(x+"X"+y+"="+x*y);
			}
			}
	
		}
}
