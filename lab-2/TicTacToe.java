import java.util.Scanner;

public class TicTacToe{
	
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		Game game = new Game();
		int mode = sc.nextInt();
		System.out.println();
		if(mode==1){
			Player p1 = new Player(1);
			Player p2 = new Player(2);
			System.out.println("Game on!\n");
			System.out.println(p1.getName() + " <X> vs. " + p2.getName() + " <O>\n");
			System.out.println("Fight!\n");
			game.giveIntro();
			int player = 1;
			while(game.getOccupied() != 9){
				if(player==1){
					game.printGrid();
					int pos = p1.makeMove();
					int ind = game.placeMark(pos, player);
					while(ind == -1){
						System.out.println("Oops! That's an invalid choice. Try again.\n");
						game.printGrid();
						pos = p1.makeMove();
						ind = game.placeMark(pos, player);
					}
					if(ind == 1){
						game.printGrid();
						System.out.println(p1.getName() + " wins! Congratulations!");
						return;
					}
					//System.out.println(game.placeMark(pos, player));
					player = 2;
				}
				else{
					game.printGrid();
					int pos = p2.makeMove();
					int ind = game.placeMark(pos, player);
					while(ind == -1){
						System.out.println("Oops! That's an invalid choice. Try again.\n");
						game.printGrid();
						pos = p2.makeMove();
						ind = game.placeMark(pos, player);
					}

					if(ind == 1){
						game.printGrid();
						System.out.println(p2.getName() + " wins! Congratulations!");
						return;
					}
					//System.out.println(game.placeMark(pos, player));
					player = 1;
				}
				
			}
			game.printGrid();
			System.out.println("Looks like it's a draw :(");
			System.out.println("On the bright side, nobody lost :)");
		}

		else if(mode==2){
			Player p1 = new Player(1);
			Computer p2 = new Computer(2);
			System.out.println("Game on!\n");
			System.out.println(p1.getName() + " <X> vs. " + p2.getName() + " <O>\n");
			System.out.println("Fight!\n");
			game.giveIntro();
			int player = 1;
			while(game.getOccupied() != 9){
				if(player==1){
					game.printGrid();
					int pos = p1.makeMove();
					int ind = game.placeMark(pos, player);
					while(ind == -1){
						System.out.println("Oops! That's an invalid choice. Try again.\n");
						game.printGrid();
						pos = p1.makeMove();
						ind = game.placeMark(pos, player);
					}
					if(ind == 1){
						game.printGrid();
						System.out.println(p1.getName() + " wins! Congratulations!");
						return;
					}
					player = 2;
				}
				else{
					//game.printGrid();
					int pos = p2.makeMove();
					int ind = game.placeMark(pos, player);
					while(ind == -1){
						//System.out.println("Oops! That's an invalid choice. Try again.\n");
						game.printGrid();
						pos = p2.makeMove();
						ind = game.placeMark(pos, player);
					}
					System.out.println("Mr. Brain has a quick mind. He chose position " + pos + ".\n");
					if(ind == 1){
						game.printGrid();
						System.out.println(p2.getName() + " wins! Congratulations!");
						return;
					}
					player = 1;
				}
				
			}
			game.printGrid();
			System.out.println("Looks like it's a draw :(");
			System.out.println("On the bright side, nobody lost :)");
		}

		else{
			System.out.println("Invalid choice! Mr. Brain is going to sleep.");
		}

	}

}
