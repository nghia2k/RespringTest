//
//  ViewController.m
//  
//
//  Created by NTNghia on 31/05/2018.
//
//

#import "XXRootViewController.h"
#import <SpringBoard/SpringBoard.h>
#include <sys/spawn.h>
#include <sys/stat.h>
#include <copyfile.h>
#include <mach-o/dyld.h>


@implementation XXRootViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES animated:YES];

    self.view.backgroundColor = [UIColor whiteColor];

    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Press To Respring" forState:UIControlStateNormal];
    [button sizeToFit];
    CGRect rect = [self.view bounds];
    button.center = CGPointMake(rect.size.width/2,200);

    // Add an action in current code file (i.e. target)
    [button addTarget:self action:@selector(buttonPressed:)
     forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:button];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-80,80,200,50)];
    label.textColor = [UIColor blackColor];
    label.text = @"Welcome";
    label.font = [UIFont systemFontOfSize:40];
    [self.view addSubview:label];
    
    UILabel *label2 = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2,120,200,50)];
    label2.textColor = [UIColor blackColor];
    label2.text = @"DevNTNghia";
    label2.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:label2];


// (rest of class implementation omitted)
    
}

- (void)buttonPressed {
	[(SpringBoard *)[UIApplication sharedApplication] _relaunchSpringBoardNow];
}

@end