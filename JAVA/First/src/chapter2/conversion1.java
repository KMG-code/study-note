package chapter2;

public class conversion1 {

	public static void main(String[] args) {
		// 자동 형 변환(바이트 크기 작은수-> 큰수 , 정수 -> 실수)
		byte bnum=10;
		int inum=bnum;
		System.out.println(bnum);
		System.out.println(inum);
		
		int inum2 = 20;
		float fNum = inum2;
		System.out.println(inum);
		System.out.println(fNum);
		double dnum;
		dnum=fNum+inum;
		System.out.println(dnum);

	}

}
