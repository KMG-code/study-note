package chapter4;

import java.util.Scanner;

public class SwichcaseEx1 {

	public static void main(String[] args) {
	

		//����� �Է��� �޴� ��ĳ�� Ŭ����
	Scanner scanner = new Scanner(System.in);
	System.out.println("���� �Է��� �ּ���: ");
	//scanner.next();
		
		String floor;
		floor = scanner.next(); // ����ڰ� �Է��� ���� �����Ѵ�
		
		switch(floor) {
		case "5��" :System.out.println("�ｺ Ŭ���Դϴ�");
		break;
		case "4��" :System.out.println("ġ���Դϴ�");
		break;
		case "3��" :System.out.println("�Ǻΰ��Դϴ�");
		break;
		case "2��" :System.out.println("�����ܰ��Դϴ�");
		break;
		case "1��" :System.out.println("�౹�Դϴ�");
		break;
		default: System.out.println("������");
		
		}
		
	}
}

