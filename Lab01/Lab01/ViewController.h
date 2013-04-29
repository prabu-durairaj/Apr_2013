#import <UIKit/UIKit.h>
#import "Game.h"

@interface ViewController : UIViewController
@property Game* game;

@property IBOutlet UITextField* numberTextField;
@property IBOutlet UIButton* guessButton;
@property IBOutlet UILabel* messageLabel;
@property IBOutlet UILabel* attemptsLabel;

-(IBAction)hideKeyboard;
-(IBAction)guessButtonTouch;


@end
