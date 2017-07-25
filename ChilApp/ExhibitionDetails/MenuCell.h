//
//  MenuCell.h
//  ChilApp
//
//  Created by pimac006 on 25/07/17.
//  Copyright © 2017 pimac006. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuCell : UITableViewCell
@property (strong,nonatomic) IBOutlet UIButton *btnProfile,*btnSchedule,*btnMaps,*btnStalls,*btnGetPass;
@property (strong,nonatomic) IBOutlet UIView *viewBg;
@end
