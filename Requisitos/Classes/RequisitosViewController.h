//
//  RequisitosViewController.h
//  Requisitos
//
//  Created by Marlon Andrade on 20/03/11.
//  Copyright 2011 Traf Sistemas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FaceView.h"


@interface RequisitosViewController : UIViewController <FaceViewDelegate> {
	int hapiness;
	UILabel *newsLabel;
	UISlider *happySlider;
	FaceView *faceView;
}

@property int happiness;

@property (nonatomic, retain) IBOutlet UILabel *newsLabel;
@property (nonatomic, retain) IBOutlet UISlider *happySlider;
@property (nonatomic, retain) IBOutlet FaceView *faceView;

- (IBAction)happinessChanged:(UISlider *)sender;
- (IBAction)nextButtonClicked;

@end
