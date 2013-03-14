//
//  ItemModel.h
//  Test_MVC
//
//  Created by shimi on 13-3-3.
//  Copyright (c) 2013年 com.shimi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemModel : NSObject

@property  (nonatomic,strong) NSString *itemId; // 商品id
@property  (nonatomic,strong) NSString *title; // 商品名称，目前没有使用
@property  (nonatomic,strong) NSString *price; // 商品价格，打算通过mtop获取
@property  (nonatomic,strong) NSString *detailUrl; // 详情链接
@property  (nonatomic,strong) NSString *images; // 商品图片
@property  (nonatomic,strong) NSString *description;//商品描述

+(ItemModel *)itemModel;

@end
