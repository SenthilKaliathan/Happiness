//
//  HappinessViewController.m
//  Happiness
//
//  Created by Senthil Kumar on 01/03/13.
//  Copyright (c) 2013 Senthil Kumar. All rights reserved.
//

#import "HappinessViewController.h"
#import "FaceView.h"

@interface HappinessViewController ()
@property(nonatomic,weak) IBOutlet FaceView *faceView;
@end

@implementation HappinessViewController

@synthesize happiness = _happiness;
@synthesize faceView = _faceView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)setHappiness:(int)happiness{
    self.happiness = happiness;
    [self.faceView setNeedsDisplay];
}


-(void) setFaceView:(FaceView *)faceView{
    _faceView = faceView;
    [self.faceView addGestureRecognizer:[[UIPinchGestureRecognizer alloc] initWithTarget:self.faceView action:@selector(pinch:)] ];
}

@end
