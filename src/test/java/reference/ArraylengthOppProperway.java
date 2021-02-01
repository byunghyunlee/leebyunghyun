package reference;

public class ArraylengthOppProperway {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] intArray = new int[5];
		int num = 1;
		
		//입력부
		for(int i=intArray.length-1; i>=0; i--) {
			intArray[i] = num++;
		}
		//출력부
		for(int i=0; i<intArray.length; i++) {
			System.out.print(intArray[i]+"");
		}
	}
	

}
