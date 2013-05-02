
#import "ViewController.h"

@implementation ViewController
@synthesize homeScreen;

-(IBAction)loginButtonTapped{
    
    WelcomeViewController* welcomeScreen = [[WelcomeViewController alloc]initWithNibName:@"WelcomeViewController" bundle:nil];
    welcomeScreen.title = @"Welcome";
    homeScreen = [[HomeViewController alloc]initWithRootViewController:welcomeScreen];
    [self.view addSubview:homeScreen.view];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
