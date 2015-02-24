//
//  UIBlurView.h
//
//  Created by Max Campolo on 12/3/14.
//  Copyright (c) 2014 Maxim Campolo. All rights reserved.
//

/* 
 * UIBlurView creates a blurred view from a current view passed as an argument.
 * This is useful if you would like to blur over the content currently displayed on the screen. 
 * To blur the whole screen pass self.view to one of the methods below after creating an instance of UIBlurView.
 */

#import <UIKit/UIKit.h>

@interface UIBlurView : UIView

#pragma mark - Properties

@property (nonatomic, readonly) UIImage *bgImage;

#pragma mark - Class methods

// Sets blurred background with default settings
- (void)setBlurredBackgroundImageFromView:(UIView*)currentView;
// Sets blurred background with dark effect
- (void)setBlurredBackgroundImageWithDarkEffectFromView:(UIView *)currentView;
// Sets blurred background image with light effect
- (void)setBlurredBackgroundImageWithLightEffectFromView:(UIView *)currentView;

// Sets blurred background image with custom effect
- (void)setBlurredBackgroundImageFromView:(UIView *)currentView withRadius:(CGFloat)blurRadius tintColor:(UIColor *)tintColor saturationDeltaFactor:(CGFloat)saturationDeltaFactor maskImage:(UIImage *)maskImage;

@end
