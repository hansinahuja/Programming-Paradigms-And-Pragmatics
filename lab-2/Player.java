import java.util.Scanner;

public class Player{
	private String name;
	private int symbol;

	
	public Player(int symbol){
		Scanner sc = new Scanner(System.in);
		System.out.println("Player " + symbol + ", what's your name?\n");
		this.name = sc.nextLine();
		this.symbol = symbol;
		System.out.println();
	}

	public String getName(){
		return name;
	}
	
	public int makeMove(){
		Scanner sc = new Scanner(System.in);
		System.out.println(name + ", what's your next choice? [1-9]\n");
		int c = sc.nextInt();
		System.out.println();
		return c;
	}

}
