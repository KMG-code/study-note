package java_start;

public class ex2 {
	//		args = ['���ڿ�1','���ڿ�2','���ڿ�3'] �迭 
	public static void main(String[] args) {
		/* ��Ƽ�ּ� : CTRL+SHIFT+/
		 * �Է� ���ڿ��� �Ǽ��� ����ȯ
		 */
		double f = Double.parseDouble(args[0]);
		//ȭ�� �µ��� ������ ���
		double c = (f-32.0)/1.8;
		System.out.printf("%.1f��=>%.1f�� �Դϴ�!\n",f,c);
		// println - �� �� ��� / print - �׳� ��� / printf - ���� ��� ���
		// \n ���� ���
		
		
		System.out.println(6*(5-3)+"7");
	}

}
