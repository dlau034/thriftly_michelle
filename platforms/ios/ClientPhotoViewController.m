//
//  ClientPhotoViewController.m
//  Thrifter
//
//  Created by Michelle Austria on 9/7/13.
//
//

#import "ClientPhotoViewController.h"

@interface ClientPhotoViewController ()

@end

@implementation ClientPhotoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        [[UINavigationBar appearance] setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
        [[UINavigationBar appearance] setBackgroundColor:[UIColor colorWithRed:246.0f/255.0f green:137.0f/255.0f blue:68.0f/255.0f alpha:1.0f]];
        [[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:246.0f/255.0f green:137.0f/255.0f blue:68.0f/255.0f alpha:1.0f]];
        
        
        
        [[UINavigationBar appearance] setTitleTextAttributes:
         [NSDictionary dictionaryWithObjectsAndKeys:
          [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0],
          UITextAttributeTextColor,
          [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.8],
          UITextAttributeTextShadowColor,
          [NSValue valueWithUIOffset:UIOffsetMake(0, 0)],
          UITextAttributeTextShadowOffset,
          [UIFont fontWithName:@"Futura-CondensedMedium" size:25],
          UITextAttributeFont,
          nil]];

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [[self navigationController] setNavigationBarHidden:NO animated:NO];
    self.navigationItem.hidesBackButton = YES;
    self.navigationController.navigationBar.topItem.title = @"THRIFTER";


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}

- (IBAction)takePhotoButtonPressed:(id)sender {
    
    
}

- (IBAction)uploadPhotoButtonPressed:(id)sender {
    UIImagePickerController *myPicker = [[UIImagePickerController alloc] init];
    myPicker.delegate = self;
    myPicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:myPicker animated:YES completion:nil];}




-(void)imagePickerController:(UIImagePickerController *) picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *originalImage = (UIImage *)[info objectForKey:UIImagePickerControllerOriginalImage];
    self.myImage.image = originalImage;
    [picker dismissViewControllerAnimated:YES completion:nil];
}





- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [self animateTextField: textField up: YES];
}


- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [self animateTextField: textField up: NO];
}

- (void) animateTextField: (UITextField*) textField up: (BOOL) up
{
    const int movementDistance = 170; // tweak as needed
    const float movementDuration = 0.3f; // tweak as needed
    
    int movement = (up ? -movementDistance : movementDistance);
    
    [UIView beginAnimations: @"anim" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}


@end
