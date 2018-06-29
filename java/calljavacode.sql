CREATE OR REPLACE AND COMPILE JAVA SOURCE NAMED "PrimeNumber" as
public class PrimeNumber {
public static boolean isPrimeNumber() {
		input = new Scanner(System.in);
		System.out.println("Enter a number");
		int testnumber = input.nextInt();
		boolean isPrime = false;
		if (testnumber == 2)
			isPrime = true;

		else
			for (int divider = 2; divider < testnumber; divider++) {
				if (testnumber % divider == 0) {
					isPrime = false;
					break;
				} else {
					isPrime = true;
				}

			}

		if (isPrime == true)
			System.out.println("is prime number");
		else
			System.out.println("not prime number");

		return isPrime;
	}
 }
 };
 /
 
 
 
