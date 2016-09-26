//
//  BankCardDataManager.h
//  BankSearch
//
//  Created by 郑文明 on 16/9/26.
//  Copyright © 2016年 郑文明. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BankCardDataManager : NSObject
+(BankCardDataManager *) shareManager;
@property (strong, nonatomic) NSDictionary * cardDataDict;
@end
