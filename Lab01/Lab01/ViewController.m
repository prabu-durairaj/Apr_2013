#import "ViewController.h"

@implementation ViewController

@synthesize game;
@synthesize numberTextField;
@synthesize guessButton;
@synthesize messageLabel;
@synthesize attemptsLabel;

-(IBAction)guessButtonTouch{
    int guess = [numberTextField.text intValue];
    [game play:guess];
    messageLabel.text = game.message;
    attemptsLabel.text =  [[NSString alloc]initWithFormat:@"Attempts: %d",game.attempts];
    if(game.gameOver)
        guessButton.enabled = false;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	game = [Game new];
    [game initialize];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
