//
//  FrameworksViewController.m
//  Plataforma
//
//  Created by Marlon Andrade on 20/03/11.
//  Copyright 2011 Traf Sistemas. All rights reserved.
//

#import "FrameworksViewController.h"
#import "CocoaTouchViewController.h"
#import "MediaViewController.h"
#import "CoreServiceViewController.h"
#import "CoreOSViewController.h"


@implementation FrameworksViewController

- (void)pushViewController:(UIViewController *)viewController {
	[self.navigationController pushViewController:viewController animated:YES];
	[viewController release];
}

- (IBAction)cocoaTouchClicked {
	UIViewController *vc = [[CocoaTouchViewController alloc] initWithNibName:@"CocoaTouchViewController" bundle:nil];
	vc.title = @"Cocoa Touch";
	
	[self pushViewController:vc];
}

- (IBAction)mediaClicked {
	UIViewController *vc = [[MediaViewController alloc] initWithNibName:@"MediaViewController" bundle:nil];
	vc.title = @"Media";
	
	[self pushViewController:vc];
}

- (IBAction)coreServiceClicked {
	UIViewController *vc = [[CoreServiceViewController alloc] initWithNibName:@"CoreServiceViewController" bundle:nil];
	vc.title = @"Core Service";
	
	[self pushViewController:vc];
}

- (IBAction)coreOSClicked {
	UIViewController *vc = [[CoreOSViewController alloc] initWithNibName:@"CoreOSViewController" bundle:nil];
	vc.title = @"Core OS";
	
	[self pushViewController:vc];
}

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
