//
//  DRViewController.m
//  DRFormattedLabel
//
//  Created by Daniel R on 10/27/13.
//  Copyright (c) 2013 Daniel R. All rights reserved.
//

#import "DRViewController.h"
#import "DRFormattedLabel.h"

@interface DRViewController ()

@end

@implementation DRViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    DRFormattedLabel* label = [[DRFormattedLabel alloc]initWithFrame:CGRectMake(30, 70, 190, 20) format:@"Temparature Today: %@" defaultValue:@"--"];
    label.value = @54.4;
    [self.view addSubview:label];
}



@end
