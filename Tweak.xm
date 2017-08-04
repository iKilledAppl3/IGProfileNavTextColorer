//headers
#import <UIKit/UIKit.h>
#import <objc/runtime.h>
#import <substrate.h>

//declare the label's interface 
//I know it's a label we declare it as such
@interface IGInsetLabel : UILabel
@end

//Hook the IGInsetLabel
%hook IGInsetLabel 
//use this pointer!
- (void)setText:(id)arg1 {
	//call the original function for both!
	%orig(arg1);
	//call its color property and set the color!
	self.textColor = [UIColor blueColor]; // can any uicolor you want :P
}
%end