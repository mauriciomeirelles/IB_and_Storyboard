//
//  ViewController.m
//  TestSB
//
//  Created by Mauricio Meirelles on 2/26/15.
//  Copyright (c) 2015 BEPiD. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerDetail.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lblHelloWorld;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _lblHelloWorld.text = @"Hello World";
}

- (IBAction)clickChangeText:(id)sender {
    
    _lblHelloWorld.text = [[(UIButton *)sender titleLabel] text];
    
}
- (IBAction)clickSenderEvent:(id)sender forEvent:(UIEvent *)event {
}


- (IBAction)clickDown:(id)sender {
    
    NSLog(@"CLICOU DOWN");
}

- (IBAction)clickDetail:(id)sender {
    
    [self performSegueWithIdentifier:@"gotoDetail" sender:sender];
    
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"gotoDetail"])
    {
        ViewControllerDetail *vcd = (ViewControllerDetail *)segue.destinationViewController;
        
        vcd.strDetail = @"From Master";
//        vcd.lblDetail.text = @"From Master";
        
    }
    
}

-(IBAction)backFromDetail:(UIStoryboardSegue *)segue
{
    ViewControllerDetail *vcd = (ViewControllerDetail *)segue.sourceViewController;
    
    
    NSLog(@"%@", vcd.strDetail);
    
}


- (IBAction)callNextSB:(id)sender {
    
    UIViewController *vc = [[UIStoryboard storyboardWithName:@"Settings" bundle:nil] instantiateInitialViewController];
    
    
    [self presentViewController:vc animated:YES completion:nil];
    
}



@end
