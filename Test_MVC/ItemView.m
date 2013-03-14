//
//  ItemView.m
//  Test_MVC
//
//  Created by shimi on 13-3-3.
//  Copyright (c) 2013年 com.shimi. All rights reserved.
//

#import "ItemView.h"

@implementation ItemView

@synthesize itemTitle,imageUrl,itemPrice,itemDescription;

-(id)initWithAttributes:(NSDictionary *)attributes{
    CGRect frame=CGRectMake(0, 6, 120, 230);//CGRect结构在屏幕上定义了一个矩形。
    self = [super initWithFrame:frame];
    if (self) {
        self.itemTitle=[attributes objectForKey:@"title"];
        self.imageUrl=[attributes objectForKey:@"images"];
        self.itemPrice=[attributes objectForKey:@"price"];
        self.itemDescription=[attributes objectForKey:@"description"];
    }
    [self draw];
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


-(void)draw{
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 5.0f, 310.0f, 16.0f)];
    title.text = self.itemTitle;
    title.textColor = [UIColor blackColor];
    title.font = [UIFont fontWithName:@"FZZhongDengXian-Z07S" size:16];
    title.backgroundColor = [UIColor clearColor];
    [self addSubview:title];
    //图片
    UIImageView *itemImage =[[UIImageView alloc] initWithFrame:CGRectMake(0, 24,320, 330)];
    NSURL *imageURL = [NSURL URLWithString:self.imageUrl];
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:imageURL]];
    itemImage.image=image;
    [self addSubview:itemImage];
    //价格
    UILabel *name=[[UILabel alloc] initWithFrame:CGRectMake(5.0f,360.0f, 320.0f,14.0f)];
    name.text=[NSString stringWithFormat:@"%@%@",@"价格：￥",self.itemPrice];
    name.font = [UIFont systemFontOfSize:14];
    name.textColor = [UIColor redColor];
    [self addSubview:name];
    //描述
    UILabel *description = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 375.0f, 310.0f, 56.0f)];
    description.text = self.itemDescription;
    description.textColor = [UIColor blackColor];
    description.font = [UIFont systemFontOfSize:14.0f];
    description.numberOfLines = 0;//相当于不限制行数
    [self addSubview:description];

}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
