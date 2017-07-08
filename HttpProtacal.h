//
//  HttpProtacal.h
//  DBFMPlus
//
//  Created by 白俊杰 on 15/12/2.
//  Copyright © 2015年 白俊杰. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HttpProtacal <NSObject>
@required
-(void)didReceiveResults:(NSMutableArray *)results;
@end
