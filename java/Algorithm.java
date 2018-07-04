/* Created by Zeynep Düzyurt
    Displays find  duplicate members in array. */

package AlgorithmAnalysis;

import java.util.Scanner;

public class Algorithm {

	public static void main(String[] args) {
		FindDuplicateNumberInSequence();

	}

	public static void FindDuplicateNumberInSequence() {

		Scanner input = new Scanner(System.in);
		System.out.println("Enter the size of an Array");

		int sequenceLength = input.nextInt();

		System.out.println("Enter the Element " + sequenceLength + " of an Array");

		int[] sequence = new int[sequenceLength];

		for (int sequencemember = 0; sequencemember < sequence.length; sequencemember++) {

			System.out.println("Please enter number");

			sequence[sequencemember] = input.nextInt();

		}

		int count = 0;
		for (int sequenceIndex = 0; sequenceIndex < sequence.length - 1; sequenceIndex++) {

			for (int counter = sequenceIndex + 1; counter < sequence.length; counter++)
				if (sequence[sequenceIndex] == sequence[counter] && (sequenceIndex != counter)) {
					System.out.println("Duplicate Number : " + sequence[counter]);
					count++;
				}

		}
		if (count == 0) {
			System.out.println("not");
		}

	}

}
