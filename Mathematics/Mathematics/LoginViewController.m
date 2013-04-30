#import "LoginViewController.h"
#import "LoginHelper.h"

@implementation LoginViewController

@synthesize navDelegate;
@synthesize userNameTextField;
@synthesize passwordTextField;
@synthesize messageLabel;

-(IBAction)hideKeyboard{
    [userNameTextField resignFirstResponder];
    [passwordTextField resignFirstResponder];
}
-(IBAction)login{
    if([LoginHelper authenticate:userNameTextField.text :passwordTextField.text])
        [navDelegate showQuizScreen];
    else
        messageLabel.hidden = false;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    messageLabel.hidden = true;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
