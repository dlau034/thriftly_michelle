//
//  ClientPhotoViewController.h
//  Thrifter
//
//  Created by Michelle Austria on 9/7/13.
//
//

#import <UIKit/UIKit.h>

@interface ClientPhotoViewController : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate> 

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *priceTextField;
@property (strong, nonatomic) IBOutlet UITextField *sizeTextField;
@property (strong, nonatomic) IBOutlet UITextField *brandTextField;
@property (strong, nonatomic) IBOutlet UITextField *descriptionTextField;
@property (strong, nonatomic) IBOutlet UITextField *tagsTextField;

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic) IBOutlet UIButton *takePhotoButton;
@property (strong, nonatomic) IBOutlet UIButton *uploadPhotoButton;


- (IBAction)takePhotoButtonPressed:(id)sender;
- (IBAction)uploadPhotoButtonPressed:(id)sender;

@property (strong, nonatomic) IBOutlet UIImageView *myImage;


@end
