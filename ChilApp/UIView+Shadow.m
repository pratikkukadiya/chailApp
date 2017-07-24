

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

-(void)Shadow
{
    float shadowSize = 10.0f;
    UIBezierPath *shadowPath = [UIBezierPath bezierPathWithRect:CGRectMake(self.frame.origin.x - shadowSize / 2,
                                                                           self.frame.origin.y - shadowSize / 2,
                                                                           self.frame.size.width + shadowSize,
                                                                           self.frame.size.height + shadowSize)];
    self.layer.masksToBounds = NO;
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
    self.layer.shadowOpacity = 0.8f;
    self.layer.shadowPath = shadowPath.CGPath;
}

@end
