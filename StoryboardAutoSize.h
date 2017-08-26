//
//  StorybordAutoSize.h
//  TT
//
//  Created by 刘东旭 on 2017/8/26.
//  Copyright © 2017年 刘东旭. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface StoryboardAutoSize : NSObject

+(StoryboardAutoSize *)sharedManager;
- (void)storyBoardAutoLayout:(UIView *)rootView;

@end
