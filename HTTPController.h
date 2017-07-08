//
//  HTTPController.h
//  DBFMPlus
//
//  Created by 白俊杰 on 15/12/2.
//  Copyright © 2015年 白俊杰. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "AFNetworking.h"
#import "HttpProtacal.h"



@interface HTTPController : NSObject
@property (nonatomic,assign) id<HttpProtacal> delegate;
-(void)onSerach:(NSString *)url;
@end

