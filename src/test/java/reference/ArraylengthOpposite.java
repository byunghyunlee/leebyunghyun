package reference;

public class ArraylengthOpposite {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] intArray = new int[5];
		int num = 5;
		for(int i=0; i<intArray.length; i++) {
			intArray[i] = num--;
			System.out.print(intArray[i]+"");
		}
	}

}
