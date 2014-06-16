//
//  AdditionsMacro.h
//  Additions
//
//  Created by Johnil on 13-6-15.
//  Copyright (c) 2013年 Johnil. All rights reserved.
//

#ifdef DEBUG
#define NSLog(...) NSLog(__VA_ARGS__)//如果为测试模式,则log信息,否则什么都不做. 当项目设置为release时自动修改,不需要额外修改配置
#else
#define NSLog(...) do{} while(0)
#endif


#define imageNamed(name) ([UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:name ofType:nil]])

#define CGRectChangeX(rect, x) (CGRectMake(x, rect.origin.y, rect.size.width, rect.size.height))
#define CGRectChangeY(rect, y) (CGRectMake(rect.origin.x, y, rect.size.width, rect.size.height))
#define CGRectChangeWidth(rect, width) (CGRectMake(rect.origin.x, rect.origin.y, width, rect.size.height))
#define CGRectChangeHeight(rect, height) (CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, height))
#define CGRectChangeSize(rect, size) (CGRectMake(rect.origin.x, rect.origin.y, size.width, size.height))
#define CGRectChangeOrigin(rect, origin) (CGRectMake(origin.x, origin.y, rect.size.width, rect.size.height))

#import "AudioManager.h"
#import "NSData+Additions.h"
#import "NSString+Additions.h"
#import "NSArray+Additions.h"
#import "NSMutableArray+Additions.h"
#import "NSDictionary+Additions.h"
#import "UIApplication+Additions.h"
#import "UIDevice+Additions.h"
#import "UIScreen+Additions.h"
#import "UITableView+Additions.h"
#import "UIView+Additions.h"
#import "UIColor+Additions.h"

#import "UIView+ViewLayout.h"
#import "UIImage+Tint.h"

// 颜色宏
#define kGetColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]