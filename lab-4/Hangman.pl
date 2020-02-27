sub giveIntro{
	print "WELCOME TO HANG-MANN!\n";
	print "Dr. Mann has been accused of prescribing his patients Crocins for any illness that they walk in with.\n";
	print "For some reason, this is considered a very serious offence in Weird-Laws-Land.\n";
	print "Dr. Mann is at the risk of being hanged for this serious crime, and you've come to his rescue.\n";
	print "Traditional Hangman rules apply. Follow the prompts and you'll be Dr. Mann's saviour.\n\n";
}

sub chooseRandomWord{
	@words = ("this", "is", "test", "words", "legendary", "probability", "programming", "paradigms", "pragmatics");
	$lenwords = @words;
	print "Choose a number between 1 and $lenwords: ";
	$choice = <STDIN>;
	if($choice < 1 || $choice > $lenwords){
		print "Invalid choice! Sometimes the game ends before it starts. Dr. Mann was counting on you :(\n";
		exit();
	}
	$choice = $choice - 1;
	$word = $words[$choice];
	print "\n";
	return $word;
}

sub drawHangman{
	$left = @_[0];
	if($left==0){
		print "---\n  |\n  O\n /|\\\n  |\n / \\\n\n";
	}
	if($left==1){
		print "---\n  |\n  O\n /|\n  |\n / \\\n\n";
	}
	if($left==2){
		print "---\n  |\n  O\n  |\n  |\n / \\\n\n";
	}
	if($left==3){
		print "---\n  |\n  O\n  |\n  |\n / \n\n";
	}
	if($left==4){
		print "---\n  |\n  O\n  |\n  |\n\n";
	}
	if($left==5){
		print "---\n  |\n  O\n\n";
	}
	if($left==6){
		print "---\n  |\n \n";
	}
}

sub playGame{
	$word = @_[0];
	$left = 6;
	$len = length($word);
	%letters = ('a', 0, 'b', 0, 'c', 0, 'd', 0, 'e', 0, 'f', 0, 'g', 0, 'h', 0, 'i', 0, 'j', 0, 'k', 0, 'l', 0, 'm', 0, 'n', 0, 'o', 0, 'p', 0, 'q', 0, 'r', 0, 's', 0, 't', 0, 'u', 0, 'v', 0, 'w', 0, 'x', 0, 'y', 0, 'z', 0);
	$win = 0;
	while($left > 0){

		print "You have $left attempts left.\n";
		print "Current status: ";
		$howmany = 0;
		for($i=0; $i<$len; $i++){
			$currchar = substr($word, $i, 1);
			if($letters{$currchar}==1){
				print "$currchar ";
				$howmany = $howmany + 1;
			}
			else{
				print "_ ";
			}
	
		}
		print "\n";
		drawHangman($left);
		if($howmany == $len){
			print "Congrats! You won it all!\n";
			print "Dr. Mann couldn't be more thankful. He promises you a lifetime supply of Crocins as reward!\n";
			$win = 1;
			$left = 0;
	
		}
		
		if($win==0){
			print "Choices entered: ";
			for(a..z){
				if($letters{$_} == 1){
					print "$_ ";
				}
			}
			print "\n";
			$valid = 0;
			do{
				print "Enter your next choice: ";
				$nextalphabet = <STDIN>;
				chomp($nextalphabet);
				
				for(a..z){
					if($nextalphabet eq $_){
						$valid = 1;
						break;
					}
				}	
				if($valid == 0){
					print "Oops! Invalid choice. Try again.\n";
				}
				if($letters{$nextalphabet} == 1){
					print "Oops! You already guessed that. Try again.\n";
					$valid = 0;
				}
			}while($valid==0);
		
			$letters{$nextalphabet} = 1;
		
			$flag = 0;
			for($i=0; $i<$len; $i++){
				$currchar = substr($word, $i, $i);
				if($nextalphabet eq $currchar){
					$flag = 1;
					break;
				}
			}
	
			if($flag==0){
				print "Oops! Looks like you got it wrong :(\n\n";
				$left = $left - 1;
			}
			else{
				print "Yay! That's a correct guess! :D\n\n";
			}
		}
	}

	if($win == 0){
		print "Oh no! You're out of attempts! The word was $word.\n";
		print "Dr. Mann's death was inevitable :'(\n";
		drawHangman(0);
	}
}


giveIntro();
$word = chooseRandomWord();
print "Dr. Mann's saving grace word has been chosen! Let's begin.\n\n";
playGame($word);



