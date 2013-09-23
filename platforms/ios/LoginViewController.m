//
//  LoginViewController.m
//  Thrifter
//
//  Created by Michelle Austria on 9/7/13.
//
//

#import "LoginViewController.h"
#import "MainViewController.h"
#import "ClientPhotoViewController.h"
#import "MFViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [[self navigationController] setNavigationBarHidden:YES animated:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)facebookLoginPressed:(id)sender {
    MainViewController *mainVC = [[MainViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:mainVC animated:YES];
}

- (IBAction)twitterLoginPressed:(id)sender {
    MainViewController *mainVC = [[MainViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:mainVC animated:YES];
}

- (IBAction)vendorLoginPressed:(id)sender {
    MFViewController *clientPhotoVC = [[MFViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:clientPhotoVC animated:YES];
}
@end
