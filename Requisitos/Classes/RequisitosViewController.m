//
//  RequisitosViewController.m
//  Requisitos
//
//  Created by Marlon Andrade on 20/03/11.
//  Copyright 2011 Traf Sistemas. All rights reserved.
//

#import "RequisitosViewController.h"
#import "BadNewsViewController.h"
#import "GoodNewsViewController.h"


@implementation RequisitosViewController

@synthesize happiness;
@synthesize newsLabel, happySlider, faceView;


- (void)updateUI {
	self.happySlider.value = self.happiness;
	[self.faceView setNeedsDisplay];
}

- (void)setHappiness:(int)newHappiness {
    if (newHappiness < 0) newHappiness = 0;
	if (newHappiness > 100) newHappiness = 100;
	happiness = newHappiness;
	if (newHappiness < 50) {
		self.newsLabel.text = @"Bad News...";
	} else {
		self.newsLabel.text = @"Good News!";
	}
	[self updateUI];
}

- (IBAction)happinessChanged:(UISlider *)sender {
	self.happiness = sender.value;
}

- (IBAction)nextButtonClicked {
	UIViewController *viewController = nil;
	if (self.newsLabel.text == @"Bad News...") {
		viewController = [[BadNewsViewController alloc] initWithNibName:@"BadNewsViewController" bundle:nil];
	} else {
		viewController = [[GoodNewsViewController alloc] initWithNibName:@"GoodNewsViewController" bundle:nil];
	}
	viewController.title = self.newsLabel.text;
	[self.navigationController pushViewController:viewController animated:YES];
}

- (float)smileForFaceView:(FaceView *)requestor {
	float smile = 0;
	if (requestor == self.faceView) {
		smile = (((float)self.happiness - 50) / 50);
	}
	return smile;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	self.faceView.delegate = self;
	self.happiness = 0;
	[self updateUI];
}

- (void)releaseOutlets {
	self.faceView = nil;
	self.happySlider = nil;
	self.newsLabel = nil;
}

- (void)viewDidUnload {
    [super viewDidUnload];
    [self releaseOutlets];
}

- (void)dealloc {
	[faceView release];
	[happySlider release];
	[newsLabel release];
    [super dealloc];
}


@end
