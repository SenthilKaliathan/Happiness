//
//  FaceView.h
//  Happiness
//
//  Created by Senthil Kumar on 01/03/13.
//  Copyright (c) 2013 Senthil Kumar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FaceView : UIView

@property (nonatomic) CGFloat scale;

- (void)pinch:(UIPinchGestureRecognizer *)gesture;


@end
