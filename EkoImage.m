//
//  EkoImage.m
//  DBFMPlus
//
//  Created by 白俊杰 on 15/11/25.
//  Copyright © 2015年 白俊杰. All rights reserved.
//

#import "EkoImage.h"

@implementation EkoImage

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.clipsToBounds=true;
        self.layer.cornerRadius=self.frame.size.width/2;
        
        self.layer.borderWidth=4;
        self.layer.borderColor=(__bridge CGColorRef _Nullable)([[UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.7] init]);
    }
    return self;
}
-(void)onRotation
{
    CABasicAnimation *animation=[[CABasicAnimation alloc]init];
    animation.fromValue=[NSNumber numberWithFloat:0.0];
    animation.toValue=[NSNumber numberWithFloat:M_PI*2.0];
    animation.duration=20;
    animation.repeatCount=1000;
    [self.layer addAnimation:animation forKey:@"transform.rotation"];
}
@end
