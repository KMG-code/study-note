package java_start;

public class ex2 {
	//		args = ['문자열1','문자열2','문자열3'] 배열 
	public static void main(String[] args) {
		/* 멀티주석 : CTRL+SHIFT+/
		 * 입력 문자열을 실수로 형변환
		 */
		double f = Double.parseDouble(args[0]);
		//화씨 온도를 섭씨로 계산
		double c = (f-32.0)/1.8;
		System.out.printf("%.1f도=>%.1f도 입니다!\n",f,c);
		// println - 한 줄 띄움 / print - 그냥 출력 / printf - 변수 사용 출력
		// \n 한줄 띄움
		
		
		System.out.println(6*(5-3)+"7");
	}

}
