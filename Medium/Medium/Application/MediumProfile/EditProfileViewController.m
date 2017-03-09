//
//  EditProfileViewController.m
//  SNews
//
//  Created by macmini on 15/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "EditProfileViewController.h"

@interface EditProfileViewController () 

@end

@implementation EditProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewDidLayoutSubviews {
    [textview_about setContentOffset:CGPointZero animated:NO];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)save:(id)sender {
}

- (IBAction)close:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)EditProfile:(id)sender
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:nil
                                                             delegate:self
                                                    cancelButtonTitle:@"Cancel"
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:@"Camera", @"Photo Library", nil];
    [actionSheet showInView:self.view];
    actionSheet.tag=10;
    
}

#pragma mark - actionSheet Delegates
- (void)willPresentActionSheet:(UIActionSheet *)actionSheet
{
    SEL selector = NSSelectorFromString(@"_alertController");
    if ([actionSheet respondsToSelector:selector])
    {
        UIAlertController *alertController = [actionSheet valueForKey:@"_alertController"];
        if ([alertController isKindOfClass:[UIAlertController class]])
        {

        }
    }
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (actionSheet.tag == 10)
    {
        switch (buttonIndex)
        {
            case 0:
            {
                isCamera = TRUE;
                
                UIImagePickerController *picker = [[UIImagePickerController alloc] init];
                picker.allowsEditing = NO;
                picker.sourceType = UIImagePickerControllerSourceTypeCamera;
                picker.delegate = self;
                picker.navigationBar.tintColor = [UIColor redColor];
                [self presentViewController:picker animated:YES completion:nil];
            }
                break;
            case 1:
            {
                isCamera = FALSE;

                UIImagePickerController *picker = [[UIImagePickerController alloc] init];
                picker.allowsEditing = NO;
                picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
                picker.delegate = self;
                picker.navigationBar.tintColor = [UIColor redColor];
                [self presentViewController:picker animated:YES completion:nil];
                
            }
                break;
            default:
                break;
        }
    }
}
# pragma mark UIImagePickerDelegate Methods
-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
    UIImage* tmpImage = [self normalizedImage:[info objectForKey:UIImagePickerControllerOriginalImage]];
    UIImage *image;
    
    if (isCamera)
    {
        NSMutableDictionary * tmpInfo =[info mutableCopy];
        NSMutableDictionary* metaData = [[tmpInfo objectForKey:@"UIImagePickerControllerMediaMetadata"] mutableCopy];
        
        [metaData setObject:[NSNumber numberWithInt:0] forKey:@"Orientation"];
        [tmpInfo setObject:tmpImage forKey:@"UIImagePickerControllerOriginalImage"];
        [tmpInfo setObject:metaData forKey:@"UIImagePickerControllerMediaMetadata"];
        
        info = tmpInfo;
        
        image =  [info objectForKey:UIImagePickerControllerOriginalImage];
    }
    else
    {
        image = tmpImage;
    }
    
    
    UIImage *scaledImage;
    if (image.size.width > (WIDTH * 2))
    {
        scaledImage = [self resizeImage:image];
    }
    else
    {
        scaledImage = image;
    }
    
    img_profile.image = image;
    
    /*
    [self dismissViewControllerAnimated:YES completion:nil];

    UIImage *chosenImage = info[UIImagePickerControllerOriginalImage];
    
    RSKImageCropViewController *imageCropVC = [[RSKImageCropViewController alloc] initWithImage:chosenImage];
    imageCropVC.delegate = self;
    [self.navigationController pushViewController:imageCropVC animated:YES];
    //[self presentViewController:imageCropVC animated:YES completion:nil];
     */

}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}
#pragma mark - imageCropper Delegate

- (void)imageCropViewControllerDidCancelCrop:(RSKImageCropViewController *)controller
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)imageCropViewController:(RSKImageCropViewController *)controller didCropImage:(UIImage *)croppedImage usingCropRect:(CGRect)cropRect
{
    img_profile.image = nil;
    
    img_profile.image = croppedImage;
    [self.navigationController popViewControllerAnimated:YES];

}

-(UIImage *)normalizedImage:(UIImage *) thisImage
{
    if (thisImage.imageOrientation == UIImageOrientationUp) return thisImage;
    
    UIGraphicsBeginImageContextWithOptions(thisImage.size, NO, thisImage.scale);
    [thisImage drawInRect:(CGRect){0, 0, thisImage.size}];
    UIImage *normalizedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return normalizedImage;
}
- (UIImage *)resizeImage:(UIImage *)foregroundimage
{
    UIImage *image = foregroundimage; // SomeImage-900x675.png
    CGFloat targetWidth = WIDTH*2;
    
    CGFloat scaleFactor = targetWidth / image.size.width;
    CGFloat targetHeight = image.size.height * scaleFactor;
    CGSize targetSize = CGSizeMake(targetWidth, targetHeight);
    
    return [image resizedImage:targetSize interpolationQuality:kCGInterpolationHigh];
}


@end
