package chapter3;

public class OperEx2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int gamescore = 150;
		
		int lastscore1 = gamescore++;
		System.out.println(lastscore1);
		System.out.println(gamescore);
		int lastscore2 = --gamescore;
		System.out.println(lastscore2);
		
		
		int num = 1;
		int num2 = num++;
		System.out.println(num);
		System.out.println(num2);
		
		System.out.println(2>1);
		System.out.println(2<1);
		
		int a = 10;
		int b = 20;
		
		System.out.println(a>b);
		System.out.println(b>a);
		System.out.println(a==b);
		System.out.println(a!=b);
		
		System.out.println((true)||(true));
		System.out.println((true)||(false));
		System.out.println((false)||(true));
		System.out.println((false)||(false));
		
		
		System.out.println((false)&&(a!=b));
		System.out.println((true)||(a>b));
		
		int n1 = 2;
		n1 += 2;
		System.out.println(n1);
		n1 *= 2;
		System.out.println(n1);
		n1 /= 2;
		System.out.println(n1);
		
	}

}
