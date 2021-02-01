package reference;

public class Arraylength {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] intArray = new int[5];
		int num = 1;
		for(int i=0; i<intArray.length; i++) {
			intArray[i] = num++;
			System.out.print(intArray[i]+" ");
		}
	}
}
