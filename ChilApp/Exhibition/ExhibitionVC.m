

#import "ExhibitionVC.h"
#import "ExhibitionCell.h"
#import "UIView+Shadow.h"
#import "ExhibitionDetailsVC.h"

@interface ExhibitionVC ()

@end

@implementation ExhibitionVC

#pragma mark -___________________________________________Life Cycle__________________________________________________ -

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark -___________________________________________TableView Methods__________________________________________________ -

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifire=@"ExhibitionCell";
    
    ExhibitionCell *cell = [tableViewObj dequeueReusableCellWithIdentifier:cellIdentifire];
    
    if (cell==nil)
    {
        NSArray *arrNib=[[NSBundle mainBundle]loadNibNamed:cellIdentifire owner:self options:nil];
        cell=[arrNib objectAtIndex:0];
    }
    
    [cell.viewBackGround DropShadow];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return  80;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ExhibitionDetailsVC *vcObj=[self.storyboard instantiateViewControllerWithIdentifier:@"ExhibitionDetailsVC"];
    [self.navigationController pushViewController:vcObj animated:YES];
    
}



@end
