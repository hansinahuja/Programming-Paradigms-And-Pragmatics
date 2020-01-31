public class Game{
	private int occupied;
	private int[] grid;
	public Game(){
		System.out.println("Welcome to TicTacToe!\n");
		System.out.println("Please enter your preferred mode: [1/2] \n");
		System.out.println("1) Player 1 vs. Player 2\n");
		System.out.println("2) Player 1 vs. Mr. Brain (our Computer friend)\n");
		occupied = 0;
		grid = new int[9];
		grid[0]=0; grid[1]=0; grid[2]=0;
		grid[3]=0; grid[4]=0; grid[5]=0;
		grid[6]=0; grid[7]=0; grid[8]=0;
	}

	public int getOccupied(){
		return occupied;
	}

	public void giveIntro(){
		System.out.println("This is what the grid looks like:\n");
		System.out.println("|\t1\t|\t2\t|\t3\t|");
		System.out.println("|\t4\t|\t5\t|\t6\t|");
		System.out.println("|\t7\t|\t8\t|\t9\t|\n");
		System.out.println("Each player takes turns making choices, starting with player 1. Let's start!\n");
	}	

	public int placeMark(int pos, int player){
		pos--;

		if(pos<0 || pos>8){
			//System.out.println("Hello " + grid[pos] + " " + pos);
			return -1;
		}
		if(grid[pos]!=0){
			//System.out.println("Hello2 " + grid[pos] + " " + pos);
			return -1;
		}
		grid[pos] = player;
		occupied++;
		if(grid[0]==player && grid[1]==player && grid[2]==player) return 1;
		if(grid[3]==player && grid[4]==player && grid[5]==player) return 1;
		if(grid[6]==player && grid[7]==player && grid[8]==player) return 1;
		if(grid[0]==player && grid[3]==player && grid[6]==player) return 1;
		if(grid[1]==player && grid[4]==player && grid[7]==player) return 1;
		if(grid[2]==player && grid[5]==player && grid[8]==player) return 1;
		if(grid[0]==player && grid[4]==player && grid[8]==player) return 1;
		if(grid[2]==player && grid[4]==player && grid[6]==player) return 1;
		return 0;
	}

	public void printGrid(){
		for(int i=0; i<9; i++){
			if(i%3==0){
				System.out.println();
				System.out.print("|\t");
			}
			if(grid[i]==0) System.out.print(" \t|\t");
			else if(grid[i]==1) System.out.print("X\t|\t");
			else System.out.print("O\t|\t");
		}
		System.out.println("\n");
		return;
	}
}
