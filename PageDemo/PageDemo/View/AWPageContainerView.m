//
//  AWPageContainerView.m
//  PageDemo
//
//  Created by liangaiwu on 2020/7/16.
//  Copyright © 2020 liangaiwu. All rights reserved.
//

#import "AWPageContainerView.h"

@interface AWPageContainerView ()

@property (nonatomic, strong) UIScrollView *containerView;

@property (nonatomic, strong) NSMutableArray *pagesArray;

@property (nonatomic, assign) CGSize pageSize;

@end



@implementation AWPageContainerView

- (instancetype)initWithCoder:(NSCoder *)coder {
    return [self initWithFrame:[UIScreen mainScreen].bounds];
}

- (instancetype)init {
    return [self initWithFrame:[UIScreen mainScreen].bounds];
}

- (instancetype)initWithFrame:(CGRect)frame {
    if(self = [super initWithFrame:frame]) {
        _pageSize = frame.size;
        _pagesArray = [NSMutableArray arrayWithCapacity:4];
        [self initUI];
    }
    return self;
}

- (void)initUI {

    CGRect rect = CGRectMake(0, 0, self.pageSize.width, self.pageSize.height);
    _containerView = [[UIScrollView alloc] initWithFrame:rect];
    _containerView.pagingEnabled = YES;
    _containerView.showsVerticalScrollIndicator = NO;
    _containerView.showsHorizontalScrollIndicator = NO;
    _containerView.backgroundColor = [UIColor whiteColor];
    [self addSubview:_containerView];
}

#pragma mark public
- (void)addPage {
    
    CGFloat x = self.pagesArray.count * self.pageSize.width;
    CGRect rect = CGRectMake(x, 0, self.pageSize.width, self.pageSize.height);
    UIView *page = [[UIView alloc]initWithFrame:rect];
    [self.containerView addSubview:page];
    
    self.containerView.contentSize = CGSizeMake(x+self.pageSize.width, self.pageSize.height);
    [self.pagesArray addObject:page];
}

- (UIView *)getPageBy:(NSInteger)index {
    
    if(index >= 0 && index < self.pagesArray.count) {
        return self.pagesArray[index];
    }
    return nil;
}

@end
