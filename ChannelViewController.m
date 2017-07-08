//
//  ChannelViewController.m
//  DBFMPlus
//
//  Created by 白俊杰 on 15/11/30.
//  Copyright © 2015年 白俊杰. All rights reserved.
//

#import "ChannelViewController.h"

@interface ChannelViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tv;

@end

@implementation ChannelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"channel"];
    cell.textLabel.text=[NSString stringWithFormat:@"频道%d",[indexPath row]];    //@"标题";
    
    return cell;
}
@end
