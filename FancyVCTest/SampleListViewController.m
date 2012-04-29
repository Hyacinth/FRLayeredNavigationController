//
//  SampleContentViewController.m
//  FancyVCTest
//
//  Created by Johannes Weiß on 4/20/12.
//  Copyright (c) 2012 factis research GmbH. All rights reserved.
//

#import "SampleListViewController.h"
#import "SampleContentViewController.h"

#import "UIViewController+FancyNavigationController.h"

@interface SampleListViewController ()

@end

@implementation SampleListViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        self.title = @"demo";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

#pragma mark - Table view data source

- (NSString *)cellText:(NSInteger)n {
    if (n < 0) {
        return @"iOS stinkt";
    } else if (n == 0) {
        return @"content (ANIMATION)";
    } else if (n == 1) {
        return @"content (NO ANIMATION)";
    } else if (n == 2) {
        return @"pop to root vc (ANIMATION)";
    } else if (n == 3) {
        return @"pop to root vc (NO ANIMATION)";
    } else if (n == 4) {
        return @"pop VC (ANIMATION)";
    } else if (n == 5) {
        return @"pop VC (NO ANIMATION)";
    } else if (n == 6) {
        return @"foo";
    } else if (n == 7) {
        return @"bar";
    } else if (n == 8) {
        return @"buz";
    } else {
        NSMutableString *s = [[NSMutableString alloc] initWithCapacity:n];
        [s appendString:@"q"];
        for (int i=8; i<n; i++) {
            [s appendString:@"u"];
        }
        [s appendString:@"x"];
        return s;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 106;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [self cellText:indexPath.row];
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

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
    UIViewController *svc = nil;
    NSString *title = [NSString stringWithFormat:@"%@ : %@", self.title, [self cellText:indexPath.row]];
    
    if (indexPath.row == 0) {
        /* push a content view controller */
        svc = [[SampleContentViewController alloc] init];
        svc.title = title;
        [self.fancyNavigationController pushViewController:svc inFrontOf:self maximumWidth:YES animated:YES];
    } else if (indexPath.row == 1) {
        /* push a content view controller */
        svc = [[SampleContentViewController alloc] init];
        svc.title = title;
        [self.fancyNavigationController pushViewController:svc inFrontOf:self maximumWidth:YES animated:NO];
    } else if (indexPath.row == 2) {
        [self.fancyNavigationController popToRootViewControllerAnimated:YES];
    } else if (indexPath.row == 3) {
        [self.fancyNavigationController popToRootViewControllerAnimated:NO];
    
    } else if (indexPath.row == 4) {
        [self.fancyNavigationController popViewControllerAnimated:YES];
    } else if (indexPath.row == 5) {
        [self.fancyNavigationController popViewControllerAnimated:NO];
    } else {
        /* list */
        svc = [[SampleListViewController alloc] init];
        svc.title = title;
        [self.fancyNavigationController pushViewController:svc inFrontOf:self maximumWidth:NO animated:YES];
    }
}

@end