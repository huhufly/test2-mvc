//
//  ItemModel.m
//  Test_MVC
//
//  Created by shimi on 13-3-3.
//  Copyright (c) 2013年 com.shimi. All rights reserved.
//

#import "ItemModel.h"

@implementation ItemModel

@synthesize itemId,price,title,images,description;

+(ItemModel *)itemModel{
    
    ItemModel *model =[[ItemModel alloc] init];
    
    model.itemId=@"21886172919";
    model.title=@"优雅修身千鸟格PU伞裙拼接复古翻领长袖打底连衣裙";
    model.images=@"http://img04.taobaocdn.com/bao/uploaded/i4/13291029901716261/T1uhwNXeVaXXXXXXXX_!!0-item_pic.jpg_310x310.jpg";
    model.price=@"99.00";
    model.description=@"典雅复古时尚款。精细的千鸟格，带给人英伦精细的复古时尚。收腰+伞裙，身段淋漓尽致，立体复古，时髦洒脱！高腰裙摆，有效拉长视觉线条，显瘦显高。背部隐形拉链设计，穿脱更加方便。搭配复古搭扣皮鞋，有款有型。";
    
    return model;
}

@end
