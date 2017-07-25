//
//  ExhibitionDetailsVC.m
//  ChilApp
//
//  Created by pimac006 on 24/07/17.
//  Copyright © 2017 pimac006. All rights reserved.
//

#import "ExhibitionDetailsVC.h"
#import "DetailsCell.h"
#import "MenuCell.h"
#import "UIView+Shadow.h"
#import "MapVc.h"
#import "ListCell.h"
#import "StallsVc.h"


@interface ExhibitionDetailsVC ()

@end

@implementation ExhibitionDetailsVC

#pragma mark -___________________________________________Life Cycle__________________________________________________ -

- (void)viewDidLoad
{
    [super viewDidLoad];
    tableViewObj.rowHeight = UITableViewAutomaticDimension;
    tableViewObj.estimatedRowHeight = 44.0;
    
    
    arrSponcers=@[@"Bhagwati Manufacturing Company",@"Sarabhai Sons",@"Mehta Garments Pvt Ltd",@"Kruti Garments Pvt Ltd",@"Sunstar Apparel Pvt Ltd",@"Fabric Fashion",@"Blue Blends India Ltd",@"AJ&Co"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark -___________________________________________TableView Methods__________________________________________________ -

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger totalRow = [tableView numberOfRowsInSection:indexPath.section];
   
    if(indexPath.row == totalRow -1)
    {
        static NSString *cellIdentifire=@"MenuCell";
        
        MenuCell *cell = [tableViewObj dequeueReusableCellWithIdentifier:cellIdentifire];
        
        if (cell==nil)
        {
            NSArray *arrNib=[[NSBundle mainBundle]loadNibNamed:cellIdentifire owner:self options:nil];
            cell=[arrNib objectAtIndex:0];
        }
        
        [cell.btnProfile addTarget:self action:@selector(BtnMenuOption:) forControlEvents:UIControlEventTouchUpInside];
        [cell.btnSchedule addTarget:self action:@selector(BtnMenuOption:) forControlEvents:UIControlEventTouchUpInside];
        [cell.btnMaps addTarget:self action:@selector(BtnMenuOption:) forControlEvents:UIControlEventTouchUpInside];
        [cell.btnStalls addTarget:self action:@selector(BtnMenuOption:) forControlEvents:UIControlEventTouchUpInside];
        [cell.btnGetPass addTarget:self action:@selector(BtnMenuOption:) forControlEvents:UIControlEventTouchUpInside];
        
        return cell;
    }
    else if(indexPath.row==1)
    {
        static NSString *cellIdentifire=@"ListCell";
        
        ListCell *cell = [tableViewObj dequeueReusableCellWithIdentifier:cellIdentifire];
        
        if (cell==nil)
        {
            NSArray *arrNib=[[NSBundle mainBundle]loadNibNamed:cellIdentifire owner:self options:nil];
            cell=[arrNib objectAtIndex:0];
        }
        
        [cell ConfigSponcerList:arrSponcers];
 
        return cell;

    }
    else
    {
        static NSString *cellIdentifire=@"DetailsCell";
        
        DetailsCell *cell = [tableViewObj dequeueReusableCellWithIdentifier:cellIdentifire];
        
        if (cell==nil)
        {
            NSArray *arrNib=[[NSBundle mainBundle]loadNibNamed:cellIdentifire owner:self options:nil];
            cell=[arrNib objectAtIndex:0];
        }
        
        [cell.viewBgObj DropShadow];
        
        return cell;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger totalRow = [tableView numberOfRowsInSection:indexPath.section];
    if(indexPath.row == totalRow -1)
    {
        return 120;
    }
    else if (indexPath.row==1)
    {
        return arrSponcers.count*40+55;
    }
    else
    {
        return  UITableViewAutomaticDimension;
    }
}

#pragma mark -___________________________________________Button Click Event__________________________________________________ -

-(void)BtnMenuOption:(UIButton *)Sender
{
    if (Sender.tag==1)
    {
        
    }
    else if (Sender.tag==2)
    {
        
    }
    else if (Sender.tag==3)
    {
        MapVc *MapView=[self.storyboard instantiateViewControllerWithIdentifier:@"MapVc"];
        [self.navigationController pushViewController:MapView animated:YES];
    }
    else if (Sender.tag==4)
    {
        StallsVc *StallsVc=[self.storyboard instantiateViewControllerWithIdentifier:@"StallsVc"];
        [self.navigationController pushViewController:StallsVc animated:YES];
    }
    else if (Sender.tag==5)
    {
        
    }
}



@end
