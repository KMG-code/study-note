package chapter4;

public class ContinueEx1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int total = 0;
		int num;
		
		for(num=1; num<=100; num++) {
			if(num%2 ==0) continue;
			//���� ���� �������� �ʰ� �ݺ��� �������� ���ư�
			total += num;
			if(num==51) break;// break �ݺ��� ����,���� ����� �ݺ��� �ϳ��� ��������
		}
		System.out.println("1����100���� Ȧ���� ����"+total+"�Դϴ�");
	}

}
