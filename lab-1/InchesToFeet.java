import java.util.Scanner;

public class InchesToFeet{
	public static void main(String[] args){
		System.out.print("Enter number of inches: ");
		Scanner sc = new Scanner(System.in);
		int i = sc.nextInt();
		int a = i/12;
		int b = i%12;

		if(a%2==1){
			a--;
			b+=12;
		}

		System.out.print(i);
		System.out.print(" inches = ");
		System.out.print(a);
		System.out.print(" feet, ");
		System.out.print(b);
		System.out.println(" inches");
	
	}
}
