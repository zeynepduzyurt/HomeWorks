//created by Zeynep Düzyurt on 23.06.2018
//print out all prime numbers between 1 and input from user
import java.util.Scanner;

public class NumberPrimes {

	public static  Scanner input;
	public static int inputNumber;

	public static void main(String[] args) {
	
		inputNumber();
		findPrimeNumbers();

	}
	
	
	public static void findPrimeNumbers() {
	
		
		for (int number = 2; number < inputNumber; number++) {
			boolean isPrimeNumber = true;

			for (int divider = 2; divider < number; divider++) {

				if (number % divider == 0) {
					isPrimeNumber = false;
					break;

				}

			}
			if (isPrimeNumber == true) {
				System.out.println(number);
			}
		}

	}

	public static void inputNumber() {
		input = new Scanner(System.in);
		System.out.println("Enter a number");
		inputNumber = input.nextInt();
	}

}
