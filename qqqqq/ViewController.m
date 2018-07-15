//
//  ViewController.m
//  qqqqq
//
//  Created by Swat on 7/14/18.
//  Copyright © 2018 Swat. All rights reserved.
//

#import "ViewController.h"
#import "Table1TableViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *l1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)pressButton:(id)sender {
    self.l1.text = @"text1111";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)press2:(id)sender {
    [self performSegueWithIdentifier:@"seg1" sender:self];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier  isEqualToString:@"seg1"]  )
    {
    Table1TableViewController *t1 =((Table1TableViewController*)segue.destinationViewController);
        t1.text = @"New cell";
        
    }
}
@end
