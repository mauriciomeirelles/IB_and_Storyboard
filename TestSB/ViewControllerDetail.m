//
//  ViewControllerDetail.m
//  TestSB
//
//  Created by Mauricio Meirelles on 2/26/15.
//  Copyright (c) 2015 BEPiD. All rights reserved.
//

#import "ViewControllerDetail.h"

@interface ViewControllerDetail ()

@end

@implementation ViewControllerDetail

- (void)viewDidLoad {
    [super viewDidLoad];

    _lblDetail.text = _strDetail;
    
    
    _strDetail = @"JA IMPRIMI";

}


- (IBAction)clickCloseDetail:(id)sender {
    
    [self performSegueWithIdentifier:@"backToMaster" sender:nil];
}



@end
