//
//  ViewController.m
//  DBFMPlus
//
//  Created by 白俊杰 on 15/11/16.
//  Copyright © 2015年 白俊杰. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet EkoImage *ekoImage;
@property (weak, nonatomic) IBOutlet UIImageView *bg;
@property (weak, nonatomic) IBOutlet UITableView *tv;

@property (nonatomic,strong)NSMutableArray *tableData;
@property (nonatomic,strong) NSMutableArray *channelData;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.ekoImage onRotation];
    
    UIBlurEffect *blurEffect=[UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVisualEffectView *blurView=[[UIVisualEffectView alloc] initWithEffect:blurEffect];
    blurView.frame=CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.bg addSubview:blurView];
    
    self.tv.delegate=self;
    self.tv.dataSource=self;
    
    
   
  
    HTTPController  *ehttp=[[HTTPController alloc] init];
    ehttp.delegate=self;
   // [ehttp onSerach:@"http://douban.com/j/app/radio/channels"];
    
    [ehttp onSerach:@"http://douban.fm/j/mine/playlist?type=n&channel=1&form=mainsite"];
}
-(void)didReceiveResults:(NSMutableDictionary *)results
{
   
//    self.tableData=[NSMutableArray arrayWithObject:results];
//    NSData *channels=[NSJSONSerialization dataWithJSONObject:self.tableData options:NSJSONWritingPrettyPrinted error:nil];
   
   // NSString *str = [[NSString alloc] initWithData:channels encoding:NSUTF8StringEncoding];
 //NSString   *reqData = [reqData stringByAppendingString:str];
   self.tableData=[results objectForKey:@"song"];
    //self.channelData=[results objectForKey:@"channels"];
    [self.tv reloadData];
    NSLog(@"reqData:%d",self.tableData.count);
    
   // NSLog(@"%@",channels);
  //  NSLog(@"获取到的数据%@",results);
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tableData.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"douban"];
    if (self.tableData.count>0) {
       
        NSDictionary *dic=self.tableData[indexPath.row];
        //NSLog(@"%@",array);
       
        cell.textLabel.text=dic[@"title"];
            
        
    }
    
        cell.detailTextLabel.text=[NSString stringWithFormat:@"子标题%d",[indexPath row]];
    cell.imageView.image=[UIImage imageNamed:@"thumb"];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
