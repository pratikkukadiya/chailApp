

#import "UIView+Shadow.h"

@implementation UIView (Shadow)

-(void)DropShadow
{
    self.layer.cornerRadius = 2 ;
    self.layer.shadowColor =  [UIColor lightGrayColor].CGColor;
    self.layer.shadowOffset = CGSizeMake(0.5, 4.0); //Here your control your spread
    self.layer.shadowOpacity = 0.3 ;
    self.layer.shadowRadius = 2.0; //Here your control your blur
}

@end
