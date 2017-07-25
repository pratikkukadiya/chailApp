//
//  ListCell.h
//  ChilApp
//
//  Created by pimac006 on 25/07/17.
//  Copyright © 2017 pimac006. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListCell : UITableViewCell
{
    IBOutlet UITableView *tableViewObj;
}

@property (strong,nonatomic) IBOutlet UIView *viewBg;
@property (strong,nonatomic) NSArray *arrSponcerList;

-(void)ConfigSponcerList:(NSArray *)Data;

@end
