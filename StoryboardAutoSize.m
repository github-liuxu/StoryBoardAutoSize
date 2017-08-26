//
//  StorybordAutoSize.m
//  TT
//
//  Created by 刘东旭 on 2017/8/26.
//  Copyright © 2017年 刘东旭. All rights reserved.
//

#import "StoryboardAutoSize.h"
#import "AppDelegate.h"

@interface StoryboardAutoSize ()

@property float autoSizeScaleX;
@property float autoSizeScaleY;

@end

@implementation StoryboardAutoSize


#define ScreenHeight [[UIScreen mainScreen] bounds].size.height
#define ScreenWidth [[UIScreen mainScreen] bounds].size.width

+(StoryboardAutoSize *)sharedManager {
    static dispatch_once_t predicate;
    static StoryboardAutoSize* sharedManager =nil ;
    dispatch_once(&predicate, ^{
        sharedManager = [[StoryboardAutoSize alloc] init];
    });
    return sharedManager;
}

//storyBoard view自动适配
- (void)storyBoardAutoLayout:(UIView *)rootView {
    
    self.autoSizeScaleX = ScreenWidth/375.0;
    self.autoSizeScaleY = ScreenHeight/667.0;
    
    for (UIView *temp in rootView.subviews) {
        temp.frame = LDXCGRectMake(temp.frame.origin.x, temp.frame.origin.y, temp.frame.size.width, temp.frame.size.height);
        [self storyBoardAutoLayout:temp];
    }
}

CGRect LDXCGRectMake(CGFloat x, CGFloat y, CGFloat width, CGFloat height) {
    StoryboardAutoSize *autoSize = [StoryboardAutoSize sharedManager];
    CGRect rect;
    rect.origin.x = x * autoSize.autoSizeScaleX;
    rect.origin.y = y * autoSize.autoSizeScaleY;
    rect.size.width = width * autoSize.autoSizeScaleX;
    rect.size.height = height * autoSize.autoSizeScaleY;
    return rect;
}


@end
