//
//  DataManager.m
//  ExampleWithMVC
//
//  Created by Huy Quang Ngo on 11/10/15.
//  Copyright © 2015 KhanhNQ. All rights reserved.
//

#import "DataManager.h"
#import "VSModel.h"
@implementation DataManager
+(instancetype)getSingleton{
    static DataManager* manager;
    static dispatch_once_t dispatch;
    dispatch_once(&dispatch, ^{
        manager=[DataManager new];
        NSString* pathFile= [[NSBundle mainBundle] pathForResource:@"VictoryaSecret" ofType:@"plist"];
        NSArray* arr=[NSArray arrayWithContentsOfFile:pathFile];
        NSMutableArray* data=[[NSMutableArray alloc] initWithCapacity:arr.count];
        for (NSDictionary* item in arr) {
            VSModel* obj=[[VSModel alloc] initWithName:[item objectForKey:@"name"]
                                            andMeasure:[item objectForKey:@"measure"]
                                              andPhoto:[item objectForKey:@"photo"]];
            [data addObject:obj];
        }
        manager.data=data;
    });
    return manager;
}
@end
