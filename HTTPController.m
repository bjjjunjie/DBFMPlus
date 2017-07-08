//
//  HTTPController.m
//  DBFMPlus
//
//  Created by 白俊杰 on 15/12/2.
//  Copyright © 2015年 白俊杰. All rights reserved.
//

#import "HTTPController.h"


@interface HTTPController ()

@end

@implementation HTTPController
-(void)onSerach:(NSString *)url
{
  
    AFHTTPRequestOperationManager *manager=[AFHTTPRequestOperationManager manager];
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        [self.delegate didReceiveResults:responseObject];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
         NSLog(@"发生错误！");
    }];
}

@end
