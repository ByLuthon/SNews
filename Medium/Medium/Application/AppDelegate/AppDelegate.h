//
//  AppDelegate.h
//  SNews
//
//  Created by macmini on 02/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    
}
@property (nonatomic, retain) UILabel *lblLoaderBG;
@property (nonatomic, retain) NSMutableArray *arrUserlist;
@property (readwrite) BOOL isloginuser;
@property (strong, nonatomic) UIWindow *window;



-(void)setBorderToView:(UIView *)view withBorderWidth:(float)width radious:(float)radious color:(UIColor *)bordercolor;
- (void)animateWithShow:(BOOL)show withView:(UIView *)animatedView;
-(void)share:(NSString *)textToShare Link:(NSURL *)url;

@end

