//
//  PlataformaViewController.m
//  Plataforma
//
//  Created by Marlon Andrade on 20/03/11.
//  Copyright 2011 Traf Sistemas. All rights reserved.
//

#import "PlataformaViewController.h"
#import "ObjCViewController.h"
#import "FerramentasViewController.h"
#import "FrameworksViewController.h"
#import "PatternsViewController.h"


@implementation PlataformaViewController

- (void)pushViewController:(UIViewController *)viewController {
	[self.navigationController pushViewController:viewController animated:YES];
	[viewController release];
}

- (IBAction)linguagemClicked{
	ObjCViewController *objcVC = [[ObjCViewController alloc] initWithNibName:@"ObjCViewController" bundle:nil];
	objcVC.title = @"Objective C";
	
	[self pushViewController: objcVC];
}

- (IBAction)ferramentasClicked {
	FerramentasViewController *ferramentasVC = [[FerramentasViewController alloc] initWithNibName:@"FerramentasViewController" bundle:nil];
	ferramentasVC.title = @"Ferramentas";
	
	[self pushViewController:ferramentasVC];
}

- (IBAction)frameworksClicked {
	FrameworksViewController *frameworksVC = [[FrameworksViewController alloc] initWithNibName:@"FrameworksViewController" bundle:nil];
	frameworksVC.title = @"Frameworks";
	
	[self pushViewController:frameworksVC];
}

- (IBAction)patternsClicked {
	PatternsViewController *patternsVC = [[PatternsViewController alloc] initWithNibName:@"PatternsViewController" bundle:nil];
	patternsVC.title = @"Padrões";
	
	[self pushViewController:patternsVC];
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