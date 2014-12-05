# UIBlurView
`UIBlurView` is a view that creates a blurred version of a view that is currently presented in an app. It provides methods for multiple different blur options.

## Features
* Built in method for creating snapshot image of view that is passed to `UIBlurView`
* Multiple blur options including custom blur
* Result is a view that can be added to or overlaid on a current view for a blurring effect

# Installation
Just copy `UIBlurView.h` and `UIBlurView.m` files into your project. Add `#import UIBlurView.h` to whatever view controller is creating an instance of `UIBlurView`.

UIBlurView uses the UIImageEffects class (provided by apple) so also copy UIImageEffects.h and UIImageEffects.m files in your project. These files are included in this repository.

## Requirements
* iOS 7
* UIImageEffects.h, UIImageEffects.m

## Usage
Create an instance of `UIBlurView` the same way as creating an instance of UIView.
```objective-c
UIBlurView *bv = [[UIBlurView alloc] initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height)];
```

Blur the view by passing it to one of the `UIBlurView` class methods.
```objective-c
UIBlurView *bv = [[UIBlurView alloc] initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height)];

[bv setBlurredBackgroundImageWithDarkEffectFromView:self.view];
```

Add the view to the heirarchy.
```objective-c
UIBlurView *bv = [[UIBlurView alloc] initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height)];

[bv setBlurredBackgroundImageWithDarkEffectFromView:self.view];

[self.view addSubview:bv];
```

## Class Methods

* `- (void)setBlurredBackgroundImageFromView:(UIView*)currentView;`
* `- (void)setBlurredBackgroundImageWithDarkEffectFromView:(UIView *)currentView;`
* `- (void)setBlurredBackgroundImageWithLightEffectFromView:(UIView *)currentView;`
* `- (void)setBlurredBackgroundImageFromView:(UIView *)currentView withRadius:(CGFloat)blurRadius tintColor:(UIColor *)tintColor saturationDeltaFactor:(CGFloat)saturationDeltaFactor maskImage:(UIImage *)maskImage;`









