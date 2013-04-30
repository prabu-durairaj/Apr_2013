#import "ViewController.h"
#import "LoginViewController.h"

@implementation ViewController

@synthesize loginViewController;
@synthesize quizViewController;
@synthesize summaryViewController;

-(void)showQuizScreen{
    if(quizViewController == NULL){
        quizViewController = [[QuizViewController alloc]initWithNibName:@"QuizViewController" bundle:nil];
        quizViewController.navDelegate = self;
    }
    [self.view addSubview:quizViewController.view];
}

-(void)showSummaryScreen:(MathQuestionStore*)mathQuestionStore{
    if(summaryViewController == NULL){
        summaryViewController = [[SummaryViewController alloc]initWithNibName:@"SummaryViewController" bundle:nil];
        summaryViewController.navDelegate = self;
        summaryViewController.mathQuestionStore = mathQuestionStore;
    }
    [self.view addSubview:summaryViewController.view];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	loginViewController = [[LoginViewController alloc]initWithNibName:@"LoginViewController" bundle:nil];
    loginViewController.navDelegate = self;
    [self.view addSubview:loginViewController.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
