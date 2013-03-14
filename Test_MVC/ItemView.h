//
//  ItemView.h
//  Test_MVC
//
//  Created by shimi on 13-3-3.
//  Copyright (c) 2013年 com.shimi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemView : UIView

@property (nonatomic, assign)NSString *itemTitle;
@property (nonatomic, assign)NSString *imageUrl;
@property (nonatomic, assign)NSString *itemPrice;
@property (nonatomic, assign)NSString *itemDescription;

-(id)initWithAttributes:(NSDictionary *)attributes;

@end
