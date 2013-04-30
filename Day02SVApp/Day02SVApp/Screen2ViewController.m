
#import "Screen2ViewController.h"

@implementation Screen2ViewController
@synthesize screen3;

-(IBAction)gotoScreen3{
    if(screen3 == NULL){
        screen3 = [[Screen3ViewController alloc]initWithNibName:@"Screen3ViewController" bundle:nil];
    }
    [self.view addSubview:screen3.view];
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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
