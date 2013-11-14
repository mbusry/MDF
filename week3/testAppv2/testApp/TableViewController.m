//
//  TableViewController.m
//  testApp
//
//  Created by Michael on 11/11/13.
//  Copyright (c) 2013 Michael Usry. All rights reserved.
//

#import "TableViewController.h"
#import "mapData.h"

@interface TableViewController ()

@end

@implementation TableViewController
@synthesize bizNamesArray, dataArray;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

// sending the biz name, long and lat to the subVC
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    TableSubViewController *dvc = segue.destinationViewController;
    dvc.bizName = [bizNamesArray objectAtIndex:indexPath.row];
    dvc.bizLong = [bizLongArray objectAtIndex:indexPath.row];
    dvc.bizLat = [bizLatArray objectAtIndex:indexPath.row];
}

- (void)viewDidLoad
{
    
    {
        mapData *biz1 = [[mapData alloc] initWithName:@"Daytona Beach Board Walk" lg:@"-81.007713400000000000" lt:@"29.228699300000000000"];
        mapData *biz2 = [[mapData alloc] initWithName:@"Congo River Walk" lg:@"-81.515753500000020000" lt:@"29.228699300000000000"];
        mapData *biz3 = [[mapData alloc] initWithName:@"Daytona Speedway" lg:@"-81.08683480000002" lt:@"29.1648197"];
        mapData *biz4 = [[mapData alloc] initWithName:@"Halifax Hospital" lg:@"-81.053945" lt:@"29.20137"];
        mapData *biz5 = [[mapData alloc] initWithName:@"Indian River Village Shopping Center" lg:@"-80.48543769999998" lt:@"27.8381447"];
        mapData *biz6 = [[mapData alloc] initWithName:@"New Smyrna Church of God" lg:@"-80.94952899999998" lt:@"29.008245"];
        mapData *biz7 = [[mapData alloc] initWithName:@"Cameron's Marina" lg:@"-81.51575350000002" lt:@"27.6648274"];
        mapData *biz8 = [[mapData alloc] initWithName:@"Cape Canaveral Hospital" lg:@"-80.62222220000001" lt:@"28.3611111"];
        mapData *biz9 = [[mapData alloc] initWithName:@"Cocoa Beach" lg:@"-80.607551300000010000" lt:@"28.320006700000000000"];
        mapData *biz10 = [[mapData alloc] initWithName:@"Space View Park" lg:@"-80.80576830000001" lt:@"28.6139145"];
        
        dataArray = [[NSMutableArray alloc]initWithObjects:biz1,biz2,biz3,biz4,biz5,biz6,biz7,biz8,biz9,biz10, nil];
        
        NSLog(@"*************dataArray in tableVC count: %i",[dataArray count]);
        
      /*
         mapData *md = [dataArray objectAtIndex:x]
         NSString *n = md.bizName;
         double lg = md.bizLong;
         double lt = md.bizLat;
        DO SOMETHING WITH n, lg, lt;
        
        */
    }
        

    
    
    [super viewDidLoad];
/*
    bizNamesArray = [[NSMutableArray alloc]initWithObjects:
                     @"Daytona Beach Boardwalk",
                     @"Congo River Walk",
                     @"Daytona Speedway",
                     @"Halifax Hospital",
                     @"Indian River Village Shopping Center",
                     @"New Smyrna Church of God",
                     @"Cameron's Marina",
                     @"Cape Canaveral Hospital",
                     @"Cocoa Beach",
                     @"Space View Park", nil];
    
    bizLongArray = [[NSMutableArray alloc]initWithObjects:
                    @"-81.007713400000000000",
                    @"-81.515753500000020000",
                    @"-81.08683480000002",
                    @"-81.053945",
                    @"-80.48543769999998",
                    @"-80.94952899999998",
                    @"-81.51575350000002",
                    @"-80.62222220000001",
                    @"-80.607551300000010000",
                    @"-80.80576830000001", nil];

        bizLatArray = [[NSMutableArray alloc]initWithObjects:
                    @"29.228699300000000000",
                    @"27.664827400000000000",
                    @"29.1648197",
                    @"29.20137",
                    @"27.8381447",
                    @"29.008245",
                    @"27.6648274",
                    @"28.3611111",
                    @"28.320006700000000000",
                    @"28.6139145", nil];
    
*/

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
   self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [dataArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    NSLog(@"uitableviewcell: %@",[bizNamesArray objectAtIndex:indexPath.row]);
    //
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    
    
    [[cell textLabel] setText:[dataArray objectAtIndex:indexPath.row]];

    return cell;
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
