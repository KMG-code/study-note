package java_start;

public class ex5 {

	public static void main(String[] args) {
		int euro = Integer.parseInt(args[0]);
		int dollar = Integer.parseInt(args[1]);
		
		double euroToKwn = 1281.62664;
		double dollarTokwn = 1091.70306;
		
		double kwn = euro*euroToKwn+dollar*dollarTokwn;
		System.out.printf("환전 결과: %.0f원", kwn);
		
		
		

	}

}
