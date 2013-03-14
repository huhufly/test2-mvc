//
//  ItemViewController.m
//  Test_MVC
//
//  Created by shimi on 13-3-3.
//  Copyright (c) 2013年 com.shimi. All rights reserved.
//

#import "ItemViewController.h"

#import "ItemModel.h"
#import "ItemView.h"

@interface ItemViewController ()

@end

@implementation ItemViewController

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
    ItemModel *model=[ItemModel itemModel];
    
    NSDictionary *object=[NSDictionary dictionaryWithObjectsAndKeys:model.itemId,@"itemId",model.title,@"title",model.images,@"images",model.price,@"price",model.description,@"description",nil];
    
    UIView *view=[[ItemView  alloc]initWithAttributes:object];
    [self.view addSubview:view];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
