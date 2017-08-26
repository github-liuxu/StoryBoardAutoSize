//
//  ViewController.m
//  StoryBoardAutoSize
//
//  Created by 刘东旭 on 2017/8/26.
//  Copyright © 2017年 刘东旭. All rights reserved.
//

#import "ViewController.h"
#import "StoryboardAutoSize.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *first;
@property (weak, nonatomic) IBOutlet UIView *second;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //iPhone5
//    2017-08-26 13:43:18.369 StoryBoardAutoSize[3095:103635] {{6.8266678, 59.610195}, {204.8, 109.0015}}
//    2017-08-26 13:43:18.369 StoryBoardAutoSize[3095:103635] {{15.360004, 23.844076}, {118.61333, 46.836582}}
    //iPhone7
//    2017-08-26 13:44:07.157 StoryBoardAutoSize[3192:105279] {{8, 70}, {240, 128}}
//    2017-08-26 13:44:07.157 StoryBoardAutoSize[3192:105279] {{18, 28}, {139, 55}}
    //iPhone7P
//    2017-08-26 13:44:55.237 StoryBoardAutoSize[3287:106939] {{8.8319997787475586, 77.241379022598267}, {264.95999336242676, 141.24137878417969}}
//    2017-08-26 13:44:55.237 StoryBoardAutoSize[3287:106939] {{19.871999502182007, 30.896551609039307}, {153.45599615573883, 60.689654946327209}}
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    [[StoryboardAutoSize sharedManager] storyBoardAutoLayout:self.view];
    NSLog(@"%@",NSStringFromCGRect(self.first.frame));
    NSLog(@"%@",NSStringFromCGRect(self.second.frame));
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
