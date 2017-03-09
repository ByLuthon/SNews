//
//  ZSSDemoViewController.m
//  ZSSRichTextEditor
//
//  Created by Nicholas Hubbard on 11/29/13.
//  Copyright (c) 2013 Zed Said Studio. All rights reserved.
//

#import "ZSSDemoViewController.h"
#import "ZSSDemoPickerViewController.h"


#import "DemoModalViewController.h"


@interface ZSSDemoViewController ()

@end

@implementation ZSSDemoViewController
@synthesize isFromResponce;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Standard";
    
    //Set Custom CSS
    NSString *customCSS = @"";
    [self setCSS:customCSS];
        
    self.alwaysShowToolbar = YES;
    self.receiveEditorDidChangeEvents = NO;
    
    NSString *html = @"";
    
    // Export HTML
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Export" style:UIBarButtonItemStylePlain target:self action:@selector(exportHTML)];
    
    // HTML Content to set in the editor
    //html = @"<div class='test'></div><!-- This is an HTML comment -->" "<p>This is a our company <a title=\"Zed Said\" href=\"http://www.rlogical.com/\">RLogical Techsoft</a></p>";
    
    NSString *imageURL = [[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"ic_heart_gray_14dp" ofType:@"png"]] absoluteString];
    //[html appendFormat:@"<img src=\"%@\" />", imageURL];

    
    if (isFromResponce)
    {
        html = [NSString stringWithFormat:@"<div class='test'><div style='width:%fpx; height:40px; padding:5px; border:0.5px solid gray; border-radius: 5px'><div style='float:left;width:70%%;'><b style='width:100%%;float;'><font size='2'>Lorem Ipsum is simply</font> </b><font size='2' style='width:100%%;float:left;'>Benjamin P Hardy</font></div><div style='float:right;width:30%%; height:100%%'><img src='%@' style='width:15px;height:15px;' align='top'><font size='2'>118</font> &nbsp; <img src='%@' style='width:15px;height:15px;'align='top'><font size='2'>50</font></div></div> <br>",self.view.frame.size.width - 40,imageURL,imageURL];
    }

    NSString *str = @"<!-- This is an HTML comment -->"
    "<p>RLogical is a one-stop solution software development firm based in India and is duly-accredited by the Software Technology Parks of India (STPI). Our company’s years of experience in website design and development has made us the top choice among locally-and-internationally-owned businesses around the globe. see our website <a title=\"Zed Said\" href=\"http://www.rlogical.com/\">RLogical</a></p>";
    
    html = [NSString stringWithFormat:@"%@%@",html,str];
    
    // Set the base URL if you would like to use relative links, such as to images.
    self.baseURL = [NSURL URLWithString:@"href=\"http://www.rlogical.com/"];
    self.shouldShowKeyboard = YES;
    // Set the HTML contents of the editor
    [self setPlaceholder:@""];
    
    [self setHTML:html];
    //[self setHTML:@""];
}


- (void)showInsertURLAlternatePicker
{
    [self dismissAlertView];
    
    ZSSDemoPickerViewController *picker = [[ZSSDemoPickerViewController alloc] init];
    picker.demoView = self;
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:picker];
    nav.navigationBar.translucent = NO;
    [self presentViewController:nav animated:YES completion:nil];
}


- (void)showInsertImageAlternatePicker
{
    [self dismissAlertView];
    
    ZSSDemoPickerViewController *picker = [[ZSSDemoPickerViewController alloc] init];
    picker.demoView = self;
    picker.isInsertImagePicker = YES;
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:picker];
    nav.navigationBar.translucent = NO;
    [self presentViewController:nav animated:YES completion:nil];
}


- (void)exportHTML
{
    NSLog(@"%@", [self getHTML]);
}

- (void)editorDidChangeWithText:(NSString *)text andHTML:(NSString *)html
{
    NSLog(@"Text Has Changed: %@", text);
    NSLog(@"HTML Has Changed: %@", html);
}

- (void)hashtagRecognizedWithWord:(NSString *)word
{
    NSLog(@"Hashtag has been recognized: %@", word);
}

- (void)mentionRecognizedWithWord:(NSString *)word
{
    NSLog(@"Mention has been recognized: %@", word);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
