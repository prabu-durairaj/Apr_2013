#import "ViewController.h"
#import "Person.h"
@implementation ViewController
@synthesize theatres;
-(void)dummy{
    Person* p1 = [Person new];
    p1->name = @"Ram";
    
}

-(IBAction)clickButton2Tapped:(id)sender{
    UIButton* btn = sender;
    UITableViewCell* cell = (UITableViewCell*)[btn superview];
    
    UIAlertView* alertView = [[UIAlertView alloc]initWithTitle:cell.textLabel.text message:@"Hi" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"A",@"B",nil];
    [alertView show];
    
//    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:cell.textLabel.text delegate:self cancelButtonTitle:@"OK" destructiveButtonTitle:nil otherButtonTitles:nil];
//    actionSheet.actionSheetStyle = UIActionSheetStyleDefault;
//    [actionSheet showInView:self.view];
}

-(IBAction)clickButtonTapped:(id)sender{
    UIButton* btn = sender;
    UITableViewCell* cell = (UITableViewCell*)[btn superview];
    NSLog(@"Clicked %@",cell.textLabel.text);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return theatres.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString* theatre = [theatres objectAtIndex: [indexPath row]];
    NSLog(@"%@",theatre);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString* identifier = @"TheatreInChennai";
    int index = [indexPath row];
    NSString* theatreToBeDisplayed = [theatres objectAtIndex:index];
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.imageView.image = [UIImage imageNamed:@"Default.png"];
    cell.textLabel.text = theatreToBeDisplayed;
   UISwitch* switchCtrl = [UISwitch new];
    cell.accessoryView = switchCtrl;

    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100.0f, 3.0f, 50.0f, 44.0f);//x,y,width,height
    [btn setTitle:@"Click" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [cell addSubview:btn];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame = CGRectMake(170.0f, 3.0f, 50.0f, 44.0f);
    [btn2 setTitle:@"Click2" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(clickButton2Tapped:) forControlEvents:UIControlEventTouchUpInside];
    [cell addSubview:btn2];
    
    
//    UIButton* btn = [[UIButton alloc]initWithFrame:CGRectFromString(@"{{0,0},{10, 10}}")];
//    btn.titleLabel.text = @"Sample";
//    [cell.accessoryView addSubview:btn];
    
    // [cell.contentView addSubview:switchCtrl];
  //  [cell.contentView addSubview:btn];
   // cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    return cell;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    theatres = [NSMutableArray new];
    [theatres insertObject:@"Mayajaal" atIndex:0];
    [theatres insertObject:@"Devi" atIndex:1];
    [theatres insertObject:@"Inox" atIndex:2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
