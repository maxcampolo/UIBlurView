{\rtf1\ansi\ansicpg1252\cocoartf1343\cocoasubrtf160
{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fmodern\fcharset0 Courier;\f2\fnil\fcharset0 Menlo-Regular;
}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red63\green110\blue116;\red46\green13\blue110;
\red170\green13\blue145;\red92\green38\blue153;\red38\green71\blue75;}
\margl1440\margr1440\vieww14400\viewh12940\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural

\f0\fs24 \cf0 # UIBlurView\
\
\'91UIBlurView\'92 is a view that creates a blurred version of a view that is currently presented in an app. It provides methods for multiple different blur options.\
\
## Features\
\
* Built in method for creating snapshot image of view that is passed to UIBlurView\
* Multiple blur options including custom blur\
* Result is a view that can be added to or overlaid on a current view for a blurring effect\
\
## Installation\
\
Just copy UIBlurView.h and UIBlurView.m files into your project. Add \'91#import \'93UIBlurView.h\'94\'92 to whatever view controller is creating an instance of UIBlurView.\
\
UIBlurView uses the UIImageEffects class (provided by apple) so also copy UIImageEffects.h and UIImageEffects.m files in your project. These files are included in this repository. \
\
## Requirements\
\
* iOS 7\
* UIImageEffects.h, UIImageEffects.m\
\
## Usage\
\
### Instance\
\
Create an instance of UIBlurView the same way as creating an instance of UIView.\
\
\pard\pardeftab720

\f1 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 ```objective-c\
\pard\tx529\pardeftab529\pardirnatural

\f2\fs22 \cf3 \kerning1\expnd0\expndtw0 \CocoaLigature0 \outl0\strokewidth0 UIBlurView\cf0  *bv = [[\cf3 UIBlurView\cf0  \cf4 alloc\cf0 ] \cf4 initWithFrame\cf0 :\cf4 CGRectMake\cf0 (\cf5 self\cf0 .\cf6 view\cf0 .\cf6 frame\cf0 .\cf6 origin\cf0 .\cf6 x\cf0 , \cf5 self\cf0 .\cf6 view\cf0 .\cf6 frame\cf0 .\cf6 origin\cf0 .\cf6 y\cf0 , \cf5 self\cf0 .\cf6 view\cf0 .\cf6 frame\cf0 .\cf6 size\cf0 .\cf6 width\cf0 , \cf5 self\cf0 .\cf6 view\cf0 .\cf6 frame\cf0 .\cf6 size\cf0 .\cf6 height\cf0 )];
\f1\fs24 \cf2 \expnd0\expndtw0\kerning0
\CocoaLigature1 \outl0\strokewidth0 \strokec2 \
\pard\pardeftab720
\cf2 ```\
\
Blur the view by passing it to one of the UIBlurView class methods.\
\
\pard\pardeftab720
\cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 ```objective-c\
\pard\tx529\pardeftab529\pardirnatural

\f2\fs22 \cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 [bv \cf7 setBlurredBackgroundImageWithDarkEffectFromView\cf0 :\cf5 self\cf0 .\cf6 view\cf0 ];
\f1\fs24 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720
\cf0 \expnd0\expndtw0\kerning0
```\
\
Add the view to the heirarchy. \
\pard\pardeftab720
\cf0 \expnd0\expndtw0\kerning0
```objective-c\
\pard\tx529\pardeftab529\pardirnatural

\f2\fs22 \cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 [self.view addSubview:bv];
\f1\fs24 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720
\cf0 \expnd0\expndtw0\kerning0
```\
\
### Class Methods\
\
\pard\pardeftab720
\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 - `
\f2\fs22 \cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 \outl0\strokewidth0 - (\cf5 void\cf0 )setBlurredBackgroundImageFromView:(\cf6 UIView\cf0 *)currentView;
\f1\fs24 \cf2 \expnd0\expndtw0\kerning0
\CocoaLigature1 \outl0\strokewidth0 \strokec2 `\
\pard\pardeftab720
\cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 - `
\f2\fs22 \kerning1\expnd0\expndtw0 \CocoaLigature0 - (\cf5 void\cf0 )setBlurredBackgroundImageWithDarkEffectFromView:(\cf6 UIView\cf0  *)currentView;
\f1\fs24 \expnd0\expndtw0\kerning0
\CocoaLigature1 `\
- `
\f2\fs22 \kerning1\expnd0\expndtw0 \CocoaLigature0 - (\cf5 void\cf0 )setBlurredBackgroundImageWithLightEffectFromView:(\cf6 UIView\cf0  *)currentView
\f1\fs24 \expnd0\expndtw0\kerning0
\CocoaLigature1 `\
- `
\f2\fs22 \kerning1\expnd0\expndtw0 \CocoaLigature0 - (\cf5 void\cf0 )setBlurredBackgroundImageFromView:(\cf6 UIView\cf0  *)currentView withRadius:(\cf6 CGFloat\cf0 )blurRadius tintColor:(\cf6 UIColor\cf0  *)tintColor saturationDeltaFactor:(\cf6 CGFloat\cf0 )saturationDeltaFactor maskImage:(\cf6 UIImage\cf0  *)maskImage;
\f1\fs24 \expnd0\expndtw0\kerning0
\CocoaLigature1 `\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \
}