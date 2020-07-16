//
//  AWPageContainerView.h
//  PageDemo
//
//  Created by liangaiwu on 2020/7/16.
//  Copyright © 2020 liangaiwu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AWPageContainerView : UIView

- (instancetype)initWithFrame:(CGRect)frame NS_DESIGNATED_INITIALIZER;

- (void)addPage;
- (UIView *)getPageBy:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END
