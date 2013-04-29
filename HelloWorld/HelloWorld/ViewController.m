

#import "ViewController.h"


@implementation ViewController

@synthesize label;

-(IBAction)buttonTapped{
    label.text = @"You clicked the button";
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
