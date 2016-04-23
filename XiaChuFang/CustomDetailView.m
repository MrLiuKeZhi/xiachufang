//
//  CustomDetailView.m
//  XiaChuFang
//
//  Created by Mac on 16/4/11.
//  Copyright © 2016年 LiuKeZhi. All rights reserved.
//

#import "CustomDetailView.h"
#import "Categegories.h"
@implementation CustomDetailView
-(id)initWithFrame:(CGRect)frame withCate:(CategegoriesName*)category{
    self=[super initWithFrame:frame];
    if (self) {
        self.category=category;
        [self createTable];
    }



    return self;
}
-(void)createTable{
    UITableView*table=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height) style:UITableViewStylePlain];
    table.delegate=self;
    table.dataSource=self;
    



}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;


}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell*cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text=self.category.arr[indexPath.row];

    return cell;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
