import java.util.Random;

public class Computer{
	private String name;
	private int symbol;

	
	public Computer(int symbol){
		this.name = "Mr. Brain";
		this.symbol = symbol;
	}

	public String getName(){
		return name;
	}
	
	public int makeMove(){
		double r = Math.random() * 9.0;
		r = r+1;
		int c = (int) r;
		return c;
	}

}
