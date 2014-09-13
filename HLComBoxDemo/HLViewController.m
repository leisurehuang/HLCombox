//
//  HLViewController.m
//  HLComBoxDemo
//
//  Created by Lei Huang on 9/13/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "HLViewController.h"
#import "HLComBoxView.h"
#define kDropDownListTag 10
@interface HLViewController ()

@end

@implementation HLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    for(NSInteger i=0;i<3;i++)
    {
        HLComBoxView *comBox = [[HLComBoxView alloc]initWithFrame:CGRectMake(50+(63+3)*i, 55, 63, 24)];
        comBox.backgroundColor = [UIColor whiteColor];
        comBox.arrowImgName = @"down_dark0.png";
        NSMutableArray *itemsArray = [NSMutableArray arrayWithArray:@[@"1",@"2",@"3",@"4",@"5"]];
        comBox.titlesList = itemsArray;
        comBox.delegate = self;
        comBox.supView = self.view;
        [comBox defaultSettings];
        comBox.tag = kDropDownListTag + i;
        [self.view addSubview:comBox];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)selectAtIndex:(int)index inCombox:(HLComBoxView *)combox
{
    NSLog(@"the title is %@",combox.titlesList[index]);
}

@end
