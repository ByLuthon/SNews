//
//  PaperViewController.m
//  Medium
//
//  Created by macmini on 10/03/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "PaperViewController.h"

@interface PaperViewController () <UIScrollViewDelegate>

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) NSLayoutConstraint *constraintHeight;
@property (nonatomic, strong) NSMutableArray *contrainstArray;

@property (nonatomic, assign) BOOL pageOpened;


@end

@implementation PaperViewController

- (void)viewDidLoad
{
    [self configureScrollView];
    [self adjustStories];

    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)configureScrollView
{
    _contrainstArray = [[NSMutableArray alloc] init];
    
    _scrollView = [UIScrollView new];
    [_scrollView setDelegate:self];
    _scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:_scrollView];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_scrollView
                                                          attribute:NSLayoutAttributeLeft
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeLeft
                                                         multiplier:1.0
                                                           constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_scrollView
                                                          attribute:NSLayoutAttributeRight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeRight
                                                         multiplier:1.0
                                                           constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_scrollView
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:1.0
                                                           constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_scrollView
                                                          attribute:NSLayoutAttributeTrailing
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:view_navigation
                                                          attribute:NSLayoutAttributeTrailing
                                                         multiplier:1.0
                                                           constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_scrollView
                                                          attribute:NSLayoutAttributeBottom
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:1.0
                                                           constant:0]];
    
    _constraintHeight = [NSLayoutConstraint constraintWithItem:_scrollView
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:nil
                                                     attribute:NSLayoutAttributeNotAnAttribute
                                                    multiplier:1.0
                                                      constant:253];
    
    [self.view addConstraint:_constraintHeight];
    [self.view bringSubviewToFront:view_navigation];
}

- (void)adjustStories
{
    Story *previousStory = nil;
    
    for (NSInteger i = 0; i < 10; i++) {
        
        Story *story = [Story new];
        [story setTag:i];
        
        CGFloat hue = ( arc4random() % 256 / 256.0 );
        CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;
        CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;
        UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
        
        [story setBackgroundColor:color];
        
        UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapFrom:)];
        [story addGestureRecognizer:tapGestureRecognizer];
        
        story.translatesAutoresizingMaskIntoConstraints = NO;
        [_scrollView addSubview:story];
        
        // Default constraints
        
        [_scrollView addConstraint:[NSLayoutConstraint constraintWithItem:story
                                                                attribute:NSLayoutAttributeTop
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:_scrollView
                                                                attribute:NSLayoutAttributeTop
                                                               multiplier:1.0
                                                                 constant:0]];
        
        [_scrollView addConstraint:[NSLayoutConstraint constraintWithItem:story
                                                                attribute:NSLayoutAttributeBottom
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:_scrollView
                                                                attribute:NSLayoutAttributeBottom
                                                               multiplier:1.0
                                                                 constant:0]];
        
        NSLayoutConstraint *storyWidthConstraint = [NSLayoutConstraint constraintWithItem:story
                                                                                attribute:NSLayoutAttributeWidth
                                                                                relatedBy:NSLayoutRelationEqual
                                                                                   toItem:nil
                                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                                               multiplier:1.0
                                                                                 constant:143];
        
        [_scrollView addConstraint:storyWidthConstraint];
        [_contrainstArray addObject:storyWidthConstraint];
        
        [_scrollView addConstraint:[NSLayoutConstraint constraintWithItem:story
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:_scrollView
                                                                attribute:NSLayoutAttributeHeight
                                                               multiplier:1.0
                                                                 constant:0]];
        
        if (!previousStory) {
            
            [_scrollView addConstraint:[NSLayoutConstraint constraintWithItem:story
                                                                    attribute:NSLayoutAttributeLeft
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:_scrollView
                                                                    attribute:NSLayoutAttributeLeft
                                                                   multiplier:1.0
                                                                     constant:0]];
            
        } else {
            
            [_scrollView addConstraint:[NSLayoutConstraint constraintWithItem:story
                                                                    attribute:NSLayoutAttributeLeft
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:previousStory
                                                                    attribute:NSLayoutAttributeRight
                                                                   multiplier:1.0
                                                                     constant:0]];
            
        }
        previousStory = story;
    }
    
    [_scrollView addConstraint:[NSLayoutConstraint constraintWithItem:previousStory
                                                            attribute:NSLayoutAttributeRight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:_scrollView
                                                            attribute:NSLayoutAttributeRight
                                                           multiplier:1.0
                                                             constant:0]];
}

- (void)handleTapFrom:(UITapGestureRecognizer *)sender
{
    NSInteger element = sender.view.tag;
    CGRect frame = _scrollView.frame;
    frame.origin.x = _pageOpened ? 0 : WIDTH * element;
    [_scrollView scrollRectToVisible:frame animated:YES];
    //[_scrollView setContentOffset:CGPointMake(-WIDTH * element, 0) animated:YES];
    
    if (!_pageOpened) {
        
        [self.view removeConstraint:_constraintHeight];
        _constraintHeight = [NSLayoutConstraint constraintWithItem:_scrollView
                                                         attribute:NSLayoutAttributeHeight
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self.view
                                                         attribute:NSLayoutAttributeHeight
                                                        multiplier:1.0
                                                          constant:0];
        [self.view addConstraint:_constraintHeight];
        [self increaseStoriesSize];
        
    } else {
        
        [self.view removeConstraint:_constraintHeight];
        _constraintHeight = [NSLayoutConstraint constraintWithItem:_scrollView
                                                         attribute:NSLayoutAttributeHeight
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:nil
                                                         attribute:NSLayoutAttributeNotAnAttribute
                                                        multiplier:1.0
                                                          constant:253];
        [self.view addConstraint:_constraintHeight];
        [self decreaseStoriesSize];
        
    }
    
    
    [_scrollView setPagingEnabled:!_pageOpened];
    
    [self.view setNeedsUpdateConstraints];
    [_scrollView setNeedsUpdateConstraints];
    
    [UIView animateWithDuration:0.3 animations:^{
        [self.view layoutIfNeeded];
        [_scrollView layoutIfNeeded];
    } completion:^(BOOL finished)
    {
        if (!_pageOpened) {
            [_scrollView scrollRectToVisible:frame animated:YES];
        }
        _pageOpened = !_pageOpened;

    }];
}

- (void)increaseStoriesSize
{
    for (NSLayoutConstraint *constraint in _contrainstArray) {
        [constraint setConstant:WIDTH];
    }
}

- (void)decreaseStoriesSize
{
    for (NSLayoutConstraint *constraint in _contrainstArray) {
        [constraint setConstant:143];
    }
}

@end
