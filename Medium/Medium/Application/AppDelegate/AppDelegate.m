//
//  AppDelegate.m
//  SNews
//
//  Created by macmini on 02/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "AppDelegate.h"


@interface AppDelegate ()

@end

@implementation AppDelegate
@synthesize lblLoaderBG;
@synthesize arrUserlist,isloginuser;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    // For initialize GlobalGDXData class
    [GlobalGDXData sharedData];

    arrUserlist = [[NSMutableArray alloc] init];
    
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Lars" forKey:@"FirstName"];
        [dic setObject:@"Nordström" forKey:@"LastName"];
        [dic setObject:@"Clients Executive" forKey:@"UserRoll"];
        [dic setObject:@"Financial Institution" forKey:@"BussinessUnit"];
        [dic setObject:@"LC&I" forKey:@"Department"];
        [dic setObject:@"Lars.nordström@snews.com" forKey:@"email"];
        
        [arrUserlist addObject:dic];
    }
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Jonas" forKey:@"FirstName"];
        [dic setObject:@"Prip" forKey:@"LastName"];
        [dic setObject:@"Head of Financial Instituion" forKey:@"UserRoll"];
        [dic setObject:@"Financial Institution" forKey:@"BussinessUnit"];
        [dic setObject:@"LC&I" forKey:@"Department"];
        [dic setObject:@"Jonas.prip@snews.se" forKey:@"email"];
        [arrUserlist addObject:dic];

    }
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Barbro" forKey:@"FirstName"];
        [dic setObject:@"holmgren" forKey:@"LastName"];
        [dic setObject:@"CLients Executive" forKey:@"UserRoll"];
        [dic setObject:@"FInancial Institution" forKey:@"BussinessUnit"];
        [dic setObject:@"LC&I" forKey:@"Department"];
        [dic setObject:@"Barbro.holmgren@snews.se" forKey:@"email"];
        
        [arrUserlist addObject:dic];
    }
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Amir" forKey:@"FirstName"];
        [dic setObject:@"Abbazsadeh" forKey:@"LastName"];
        [dic setObject:@"Process Manager" forKey:@"UserRoll"];
        [dic setObject:@"Process Management" forKey:@"BussinessUnit"];
        [dic setObject:@"LC&I" forKey:@"Department"];
        [dic setObject:@"Amir.Abbazsadeh@snews.se" forKey:@"email"];
        [arrUserlist addObject:dic];
    }
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Jessica" forKey:@"FirstName"];
        [dic setObject:@"Darnelius" forKey:@"LastName"];
        [dic setObject:@"Head of Onboading" forKey:@"UserRoll"];
        [dic setObject:@"Client life cycle" forKey:@"BussinessUnit"];
        [dic setObject:@"LC&I" forKey:@"Department"];
        [dic setObject:@"Jessica.Darnelius@snews.se" forKey:@"email"];
        [arrUserlist addObject:dic];
    }
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Fredrik" forKey:@"FirstName"];
        [dic setObject:@"Lindkvist" forKey:@"LastName"];
        [dic setObject:@"Process Manager" forKey:@"UserRoll"];
        [dic setObject:@"Process Management" forKey:@"BussinessUnit"];
        [dic setObject:@"LC&I" forKey:@"Department"];
        [dic setObject:@"Fredrik.Lindkvist@snews.se" forKey:@"email"];
        [arrUserlist addObject:dic];
    }
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Sara" forKey:@"FirstName"];
        [dic setObject:@"Götlind" forKey:@"LastName"];
        [dic setObject:@"Head of KYC" forKey:@"UserRoll"];
        [dic setObject:@"Client life cycle" forKey:@"BussinessUnit"];
        [dic setObject:@"LC&I" forKey:@"Department"];
        [dic setObject:@"Sara.Götlind@snews.se" forKey:@"email"];
        [arrUserlist addObject:dic];
    }
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Josefin" forKey:@"FirstName"];
        [dic setObject:@"André" forKey:@"LastName"];
        [dic setObject:@"KYC Analyst Cards" forKey:@"UserRoll"];
        [dic setObject:@"Process Management" forKey:@"BussinessUnit"];
        [dic setObject:@"LC&I" forKey:@"Department"];
        [dic setObject:@"Josefin.André@snews.se" forKey:@"email"];
        [arrUserlist addObject:dic];
    }
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Christian" forKey:@"FirstName"];
        [dic setObject:@"Cicek" forKey:@"LastName"];
        [dic setObject:@"KYC Analyst Cards" forKey:@"UserRoll"];
        [dic setObject:@"Process Management" forKey:@"BussinessUnit"];
        [dic setObject:@"LC&I" forKey:@"Department"];
        [dic setObject:@"Christian.Cicek@snews.se" forKey:@"email"];
        [arrUserlist addObject:dic];
    }
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Christopher" forKey:@"FirstName"];
        [dic setObject:@"Kvanrberg" forKey:@"LastName"];
        [dic setObject:@"KYC Analyst Cards" forKey:@"UserRoll"];
        [dic setObject:@"Process Management" forKey:@"BussinessUnit"];
        [dic setObject:@"LC&I" forKey:@"Department"];
        [dic setObject:@"Christopher@Kvanrberg@snew.se" forKey:@"email"];
        [arrUserlist addObject:dic];
    }
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Agnes" forKey:@"FirstName"];
        [dic setObject:@"Edlund" forKey:@"LastName"];
        [dic setObject:@"KYC Analyst Cards" forKey:@"UserRoll"];
        [dic setObject:@"Process Management" forKey:@"BussinessUnit"];
        [dic setObject:@"LC&I" forKey:@"Department"];
        [dic setObject:@"Agnes.Edlund@snews.se" forKey:@"email"];
        [arrUserlist addObject:dic];
    }
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Helena" forKey:@"FirstName"];
        [dic setObject:@"Laitila" forKey:@"LastName"];
        [dic setObject:@"Analyst Cards" forKey:@"UserRoll"];
        [dic setObject:@"Process Management" forKey:@"BussinessUnit"];
        [dic setObject:@"LC&I" forKey:@"Department"];
        [dic setObject:@"Helena@Laitila.snews.se" forKey:@"email"];
        [arrUserlist addObject:dic];
    }
    {

        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Charlotte" forKey:@"FirstName"];
        [dic setObject:@"Apergren" forKey:@"LastName"];
        [dic setObject:@"KYC Analyst Cards" forKey:@"UserRoll"];
        [dic setObject:@"Process Management" forKey:@"BussinessUnit"];
        [dic setObject:@"LC&I" forKey:@"Department"];
        [dic setObject:@"Charlotte.Apergren@snews.se" forKey:@"email"];
        [arrUserlist addObject:dic];
    }
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Julia" forKey:@"FirstName"];
        [dic setObject:@"West" forKey:@"LastName"];
        [dic setObject:@"KYC Analyst Cards" forKey:@"UserRoll"];
        [dic setObject:@"Process Management" forKey:@"BussinessUnit"];
        [dic setObject:@"LC&I" forKey:@"Department"];
        [dic setObject:@"Julia.West@snews.se" forKey:@"email"];
        [arrUserlist addObject:dic];
    }
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Stefan" forKey:@"FirstName"];
        [dic setObject:@"Jonson" forKey:@"LastName"];
        [dic setObject:@"KYC Analyst LC" forKey:@"UserRoll"];
        [dic setObject:@"KYC Team LC" forKey:@"BussinessUnit"];
        [dic setObject:@"LC&I" forKey:@"Department"];
        [dic setObject:@"Stefan.Jonson@snews.se" forKey:@"email"];
        [arrUserlist addObject:dic];
    }
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Lina" forKey:@"FirstName"];
        [dic setObject:@"Bunce" forKey:@"LastName"];
        [dic setObject:@"KYC Analyst LC" forKey:@"UserRoll"];
        [dic setObject:@"KYC Team LC" forKey:@"BussinessUnit"];
        [dic setObject:@"LC&I" forKey:@"Department"];
        [dic setObject:@"Lina.Bunce@snews.se" forKey:@"email"];
        [arrUserlist addObject:dic];
    }
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Josefin" forKey:@"FirstName"];
        [dic setObject:@"Saglind" forKey:@"LastName"];
        [dic setObject:@"KYC Analyst LC" forKey:@"UserRoll"];
        [dic setObject:@"KYC Team LC" forKey:@"BussinessUnit"];
        [dic setObject:@"LC&I" forKey:@"Department"];
        [dic setObject:@"Josefin.Saglind@snews.se" forKey:@"email"];
        [arrUserlist addObject:dic];
    }
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Anna" forKey:@"FirstName"];
        [dic setObject:@"Gunnarsson" forKey:@"LastName"];
        [dic setObject:@"KYC Analyst FI" forKey:@"UserRoll"];
        [dic setObject:@"KYC Team FI" forKey:@"BussinessUnit"];
        [dic setObject:@"LC&I" forKey:@"Department"];
        [dic setObject:@"Anna.Gunnarsson@snews.se" forKey:@"email"];
        [arrUserlist addObject:dic];
    }
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Pontus" forKey:@"FirstName"];
        [dic setObject:@"Hörnmark" forKey:@"LastName"];
        [dic setObject:@"KYC Analyst FI" forKey:@"UserRoll"];
        [dic setObject:@"KYC Team FI" forKey:@"BussinessUnit"];
        [dic setObject:@"LC&I" forKey:@"Department"];
        [dic setObject:@"Pontus.Hörnmark@snews.se" forKey:@"email"];
        [arrUserlist addObject:dic];
    }
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Luthon" forKey:@"FirstName"];
        [dic setObject:@"Hagvinprice" forKey:@"LastName"];
        [dic setObject:@"Head of Digitalization" forKey:@"UserRoll"];
        [dic setObject:@"LuthCorp" forKey:@"BussinessUnit"];
        [dic setObject:@"--" forKey:@"Department"];
        [dic setObject:@"Luthon.Hagvinprice@snews.se" forKey:@"email"];
        [arrUserlist addObject:dic];
    }
    
    
    // Override point for customization after application launch.
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - Set Border
-(void)setBorderToView:(UIView *)view withBorderWidth:(float)width radious:(float)radious color:(UIColor *)bordercolor
{
    view.layer.borderWidth = width;
    view.layer.borderColor = [bordercolor CGColor];
    view.layer.cornerRadius = radious;
    view.layer.masksToBounds = YES;
}

#pragma mark - Show-Hide Loader Loader
-(void)showLoader:(NSString *)str
{
    [self hideLoader];
    [GMDCircleLoader hideFromView:self.window animated:YES];
    
    [lblLoaderBG removeFromSuperview];
    lblLoaderBG = [[UILabel alloc]initWithFrame:self.window.frame];
    lblLoaderBG.backgroundColor = [UIColor blackColor];
    lblLoaderBG.alpha = 0.5;
    [self.window addSubview:lblLoaderBG];
    self.window.userInteractionEnabled = NO;
    [GMDCircleLoader setOnView:self.window withTitle:@"" animated:YES];
}
-(void)hideLoader
{
    /*
    [GMDCircleLoader hideFromView:self.window animated:YES];
    self.window.userInteractionEnabled = YES;
    [lblLoaderBG removeFromSuperview];
     */
}
#pragma mark - Hide-Show Animation
- (void)animateWithShow:(BOOL)show withView:(UIView *)animatedView
{
    if (show == YES)
    {
        animatedView.alpha = 0;
        animatedView.hidden = NO;
        [UIView animateWithDuration:0.3 animations:^{
            animatedView.alpha = 1;
        }];
    }
    else
    {
        [UIView animateWithDuration:0.3 animations:^{
            animatedView.alpha = 0;
        } completion: ^(BOOL finished) {
            animatedView.alpha = 0;
            animatedView.hidden = finished;//if animation is finished ("finished" == *YES*), then hidden = "finished" ... (aka hidden = *YES*)
        }];
    }
}
#pragma mark - Share Controller
-(void)share:(NSString *)textToShare Link:(NSURL *)url
{
    //NSString *textToShare = @"Look at this awesome website for hiring iOS Developers!";
    //NSURL *myWebsite = [NSURL URLWithString:@"http://www.rlogical.com/"];
    
    NSArray *objectsToShare = @[textToShare, url];
    
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:objectsToShare applicationActivities:nil];
    
    NSArray *excludeActivities = @[UIActivityTypeAirDrop,
                                   UIActivityTypePrint,
                                   UIActivityTypeAssignToContact,
                                   UIActivityTypeSaveToCameraRoll,
                                   UIActivityTypeAddToReadingList,
                                   UIActivityTypePostToFlickr,
                                   UIActivityTypePostToVimeo,
                                   UIActivityTypeMail,
                                   UIActivityTypeMessage];
    
    activityVC.excludedActivityTypes = excludeActivities;
    
    [self.window.rootViewController presentViewController:activityVC animated:YES completion:nil];
}


@end
