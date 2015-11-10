//
//  VSModel.h
//  ExampleWithMVC
//
//  Created by Huy Quang Ngo on 11/10/15.
//  Copyright © 2015 KhanhNQ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface VSModel : NSObject
@property(nonatomic,strong)NSString* name;
@property(nonatomic,strong)NSString* measure;
@property(nonatomic,strong)UIImage* photo;
@property(nonatomic,strong)UIImage* icon;
-(instancetype)initWithName:(NSString*)name andMeasure:(NSString*)measure andPhoto:(NSString*)photo;
@end
