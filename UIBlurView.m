//
//  UIBlurView.m
//
//  Created by Max Campolo on 12/3/14.
//  Copyright (c) 2014 Maxim Campolo. All rights reserved.
//

#import "UIBlurView.h"
#import "UIImageEffects.h"

// Specifications for default effects
#define DEFAULT_RADIUS 40
#define DEFAULT_SATURATION_DELTA_FACTOR 1

@implementation UIBlurView

@synthesize bgImage = _bgImage;

# pragma mark - Class methods

// Set blurred background with default effects defined by BlurView
- (void)setBlurredBackgroundImageFromView:(UIView*)currentView {
    UIImage *bgImage = [self takeSnapshotOfView:currentView];
    UIImage *blurredImage = [self blurWithImageEffects:bgImage];
    UIImageView *bgImgView = [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, self.frame.size.height)];
    [bgImgView setContentMode:UIViewContentModeScaleToFill];
    [bgImgView setImage:blurredImage];
    [self insertSubview:bgImgView atIndex:0];
    _bgImage = blurredImage;
}

// Set blurred background with dark effect
- (void)setBlurredBackgroundImageWithDarkEffectFromView:(UIView *)currentView {
    UIImage *bgImage = [self takeSnapshotOfView:currentView];
    UIImage *blurredImage = [self blurWithImageEffectsDarkEffect:bgImage];
    UIImageView *bgImgView = [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, self.frame.size.height)];
    [bgImgView setContentMode:UIViewContentModeScaleToFill];
    [bgImgView setImage:blurredImage];
    [self insertSubview:bgImgView atIndex:0];
    _bgImage = blurredImage;
}

// Set blurred background with light effect
- (void)setBlurredBackgroundImageWithLightEffectFromView:(UIView *)currentView {
    UIImage *bgImage = [self takeSnapshotOfView:currentView];
    UIImage *blurredImage = [self blurWithImageEffectsLightEffect:bgImage];
    UIImageView *bgImgView = [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, self.frame.size.height)];
    [bgImgView setContentMode:UIViewContentModeScaleToFill];
    [bgImgView setImage:blurredImage];
    [self insertSubview:bgImgView atIndex:0];
    _bgImage = blurredImage;
}

// Set blurred background with custom specifications
- (void)setBlurredBackgroundImageFromView:(UIView *)currentView withRadius:(CGFloat)blurRadius tintColor:(UIColor *)tintColor saturationDeltaFactor:(CGFloat)saturationDeltaFactor maskImage:(UIImage *)maskImage {
    UIImage *bgImage = [self takeSnapshotOfView:currentView];
    UIImage *blurredImage = [self blurWithImageEffects:bgImage withRadius:blurRadius tintColor:tintColor saturationDeltaFactor:saturationDeltaFactor maskImage:maskImage];
    UIImageView *bgImgView = [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, self.frame.size.height)];
    [bgImgView setContentMode:UIViewContentModeScaleToFill];
    [bgImgView setImage:blurredImage];
    [self insertSubview:bgImgView atIndex:0];
    _bgImage = blurredImage;
}

#pragma mark - Private methods

// Takes a snapshot of the view that is passed in - to blur over current view pass in self.view
- (UIImage *)takeSnapshotOfView:(UIView *)view
{
    UIGraphicsBeginImageContext(CGSizeMake(view.frame.size.width, view.frame.size.height));
    [view drawViewHierarchyInRect:CGRectMake(0, 0, view.frame.size.width, view.frame.size.height) afterScreenUpdates:YES];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

#pragma mark - Apply Image Effects to image from UIImageEffects

- (UIImage *)blurWithImageEffects:(UIImage *)image
{
    return [UIImageEffects imageByApplyingBlurToImage:image withRadius:DEFAULT_RADIUS tintColor:nil saturationDeltaFactor:DEFAULT_SATURATION_DELTA_FACTOR maskImage:nil];
}

- (UIImage *)blurWithImageEffectsLightEffect:(UIImage *)image {
    return [UIImageEffects imageByApplyingLightEffectToImage:image];
}

- (UIImage *)blurWithImageEffectsDarkEffect:(UIImage *)image {
    return [UIImageEffects imageByApplyingDarkEffectToImage:image];
}

- (UIImage *)blurWithImageEffects:(UIImage *)image withRadius:(CGFloat)radius tintColor:(UIColor*)tintColor saturationDeltaFactor:(CGFloat)saturationDeltaFactor maskImage:(UIImage*)maskImage {
    return [UIImageEffects imageByApplyingBlurToImage:image withRadius:radius tintColor:tintColor saturationDeltaFactor:saturationDeltaFactor maskImage:maskImage];
}



@end
