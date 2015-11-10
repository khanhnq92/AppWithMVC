//
//  BraVC.m
//  ExampleWithMVC
//
//  Created by Huy Quang Ngo on 11/10/15.
//  Copyright © 2015 KhanhNQ. All rights reserved.
//

#import "BraVC.h"
#import "DataManager.h"
#import "VSModel.h"
@interface BraVC ()
@property (weak, nonatomic) IBOutlet UIScrollView *vscroll;
@property (weak, nonatomic) IBOutlet UILabel *lblDes;
@property (weak, nonatomic) IBOutlet UIPageControl *vPageControl;

@end

@implementation BraVC{
    DataManager* dataManager;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    dataManager=[DataManager getSingleton];
    self.vPageControl.numberOfPages=dataManager.data.count;
    CGSize sizeScroll=self.vscroll.frame.size;
    self.vscroll.contentSize=CGSizeMake(sizeScroll.width*dataManager.data.count, sizeScroll.height);
    int i=0;
    for (VSModel* item in dataManager.data) {
        UIImageView* vImage=[[UIImageView alloc] initWithImage:item.photo];
        vImage.frame=CGRectMake(sizeScroll.width*i, 0, sizeScroll.width, sizeScroll.width);
        vImage.contentMode=UIViewContentModeScaleAspectFit;
        [self.vscroll addSubview:vImage];
        i++;
    }
    
}
@end
