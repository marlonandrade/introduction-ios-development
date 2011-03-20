//
//  ConsumoViewController.m
//  Motivacao
//
//  Created by Marlon Andrade on 20/03/11.
//  Copyright 2011 Traf Sistemas. All rights reserved.
//

#import "ConsumoViewController.h"
#import "DiversidadeViewController.h"


@implementation ConsumoViewController

- (IBAction)nextButtonClicked {
	DiversidadeViewController *diversidadeVC = [[DiversidadeViewController alloc] initWithNibName:@"DiversidadeViewController" bundle:nil];
	diversidadeVC.title = @"Diversidade";
	
	[self.navigationController pushViewController:diversidadeVC animated:YES];
	
	[diversidadeVC release];
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
