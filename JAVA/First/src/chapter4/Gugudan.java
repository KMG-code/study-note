package chapter4;

public class Gugudan {

	public static void main(String[] args) {
		// �����ܸ����
		int dan; // �������� ���Ǽ�
		int n; // ���ϴ� ��
		for(dan=2; dan<=9; dan++) {
			for(n=1; n<=9; n++) {
			System.out.println(dan+"X"+n+"="+dan*n);
			if(n==8) break;
			}
		}
	}

}
