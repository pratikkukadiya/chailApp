//
//  ListCell.m
//  ChilApp
//
//  Created by pimac006 on 25/07/17.
//  Copyright © 2017 pimac006. All rights reserved.
//

#import "ListCell.h"
#import "ListSubCell.h"

@implementation ListCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

-(void)ConfigSponcerList:(NSArray *)Data
{
    _arrSponcerList=[NSArray arrayWithArray:Data];
    [tableViewObj reloadData];
}


#pragma mark -___________________________________________TableView Methods__________________________________________________ -

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _arrSponcerList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifire=@"ListSubCell";
    
    ListSubCell *cell = [tableViewObj dequeueReusableCellWithIdentifier:cellIdentifire];
    
    if (cell==nil)
    {
        NSArray *arrNib=[[NSBundle mainBundle]loadNibNamed:cellIdentifire owner:self options:nil];
        cell=[arrNib objectAtIndex:0];
    }
    
    cell.lblTitle.text=[_arrSponcerList objectAtIndex:indexPath.row];
    
    return cell;

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
}

@end
