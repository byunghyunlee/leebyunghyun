package reference;

public class Array {

	public static void main(String[] args) {
		//a반 학생의 점수 75,87,95,66,98 score배열선언
		//총점과 평균(소수점까지)
		int[] score = {75,87,95,66,98};
		int sum = 0;
		for(int i=0; i<score.length; i++) {
			sum += score[i];
		}
		System.out.println("총합:" + sum);
		double avg = (double)sum/score.length;
		System.out.println("평균:"+avg);
	}

}
