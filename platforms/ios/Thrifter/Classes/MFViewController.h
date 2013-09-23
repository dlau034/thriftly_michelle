//
//  MFViewController.h
//  FashionApp
//
//  Created by Michelle Austria on 9/7/13.
//  Copyright (c) 2013 Michelle Austria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MFViewController : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate> 

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *priceTextField;
@property (strong, nonatomic) IBOutlet UITextField *sizeTextField;
@property (strong, nonatomic) IBOutlet UITextField *brandTextField;
@property (strong, nonatomic) IBOutlet UITextField *descriptionTextField;
@property (strong, nonatomic) IBOutlet UITextField *tagsTextField;

@property (strong, nonatomic) IBOutlet UITextField *buyTextField;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic) IBOutlet UIButton *takePhotoButton;
@property (strong, nonatomic) IBOutlet UIButton *uploadPhotoButton;


@property (strong, nonatomic) IBOutlet UIImageView *myImage;
@property (strong, nonatomic) UITextField *activeField;


- (IBAction)takePhotoButtonPressed:(id)sender;
- (IBAction)uploadPhotoButtonPressed:(id)sender;



@end
