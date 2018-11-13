//
//  UIView+CD_Chain.m
//  SIGOODS
//
//  Created by LCD on 2018/8/9.
//  Copyright © 2018年 erazar. All rights reserved.
//

#import "UIKit+CD_Chain.h"

#pragma mark ----- UIView --------------------
@implementation UIView (CD_Chain)
+ (instancetype)cd_init{
    return [[self alloc] init];
}
/// 位置和尺寸(以父控件的左上角为坐标原点(0, 0))
- (UIView *(^)(CGRect ))cd_frame{
    return ^(CGRect a) {
        self.frame = a;
        return self;
    };
}
/// 位置和尺寸(以自己的左上角为坐标原点(0, 0))
- (UIView *(^)(CGRect ))cd_bounds{
    return ^(CGRect a) {
        self.bounds = a;
        return self;
    };
}
/// 中心点(以父控件的左上角为坐标原点(0, 0))
- (UIView *(^)(CGPoint ))cd_center{
    return ^(CGPoint a) {
        self.center = a;
        return self;
    };
}
/// 变形属性(平移\缩放\旋转)
- (UIView *(^)(CGAffineTransform ))cd_transform{
    return ^(CGAffineTransform a) {
        self.transform = a;
        return self;
    };
}
/// 自动调整子视图尺寸，默认YES则会根据autoresizingMask属性自动调整子视图尺寸
- (UIView *(^)(BOOL))cd_autoresizesSubviews{
    return ^(BOOL a) {
        self.autoresizesSubviews = a;
        return self;
    };
}
/// 自动调整子视图与父视图的位置，默认UIViewAutoresizingNone
- (UIView *(^)(UIViewAutoresizing))cd_autoresizingMask{
    return ^(UIViewAutoresizing a) {
        self.autoresizingMask = a;
        return self;
    };
}

/// 背景颜色
- (UIView *(^)(UIColor* ))cd_bgColor{
    //@weakify(self);
    return ^(UIColor* a) {
        //@strongify(self);
        self.backgroundColor = a;
        return self;
    };
}

- (UIView *(^)(UIColor* ))cd_tintColor{
    return ^(UIColor* a) {
        self.tintColor = a;
        return self;
    };
}

- (UIView *(^)(CGFloat ))cd_borderWidth{
    return ^(CGFloat a) {
        self.layer.borderWidth = a;
        return self;
    };
}
- (UIView *(^)(UIColor* ))cd_borderColor{
    return ^(UIColor* a) {
        self.layer.borderColor = a.CGColor;
        return self;
    };
}
- (UIView *(^)(CGFloat ))cd_cornerRadius{
    //@weakify(self);
    return ^(CGFloat a) {
        //@strongify(self);
        self.layer.cornerRadius = a;
        return self;
    };
}
- (UIView *(^)(BOOL))cd_clipsToBounds{
    return ^(BOOL a) {
        self.clipsToBounds = a;
        return self;
    };
}

- (UIView *(^)(CGFloat f, BOOL c))cd_radius_clips{
    //@weakify(self);
    return ^(CGFloat a, BOOL c) {
        //@strongify(self);
        self.layer.cornerRadius = a;
        self.clipsToBounds = c;
        return self;
    };
}
- (UIView *(^)(UIColor *c))cd_shadowColor{
    //@weakify(self);
    return ^(UIColor *c) {
        //@strongify(self);
        self.layer.shadowColor = c.CGColor;
        return self;
    };
}
- (UIView *(^)(CGSize a))cd_shadowOffset{
    //@weakify(self);
    return ^(CGSize a) {
        //@strongify(self);
        self.layer.shadowOffset = a;
        return self;
    };
}
- (UIView *(^)(float a))cd_shadowOpacity{
    //@weakify(self);
    return ^(float a) {
        //@strongify(self);
        self.layer.shadowOpacity = a;
        return self;
    };
}
- (UIView *(^)(CGFloat a))cd_shadowRadius{
    //@weakify(self);
    return ^(CGFloat a) {
        //@strongify(self);
        self.layer.shadowRadius = a;
        return self;
    };
}



- (UIView * (^)(NSInteger))cd_tag{
    return ^(NSInteger a) {
        self.tag = a;
        return self;
    };
}

- (UIView * (^)(BOOL ))cd_hidden{
    return ^(BOOL a) {
        self.hidden = a;
        return self;
    };
}
- (UIView * (^)(BOOL ))cd_userInteractionEnabled{
    return ^(BOOL a) {
        self.userInteractionEnabled = a;
        return self;
    };
}

- (UIView *(^)(UIViewContentMode))cd_contentMode{
    return ^(UIViewContentMode a) {
        self.contentMode = a;
        return self;
    };
}


@end

#pragma mark ----- UIButton --------------------
@implementation UIButton (CD_Chain)
- (UIButton * (^)(NSString *))cd_title{
    return ^(NSString * a){
        self.cd_titleState(a,UIControlStateNormal);
        return self;
    };
}
- (UIButton * (^)(NSString *a, UIControlState b))cd_titleState{
    return ^(NSString *a, UIControlState b){
        [self setTitle:a forState:b];
        return self;
    };
}
- (UIButton * (^)(UIColor *))cd_titleColor{
    return ^(UIColor * a){
        self.cd_titleColorState(a,UIControlStateNormal);
        return self;
    };
}
- (UIButton * (^)(UIColor *a, UIControlState b))cd_titleColorState{
    return ^(UIColor *a, UIControlState b){
        [self setTitleColor:a forState:b];
        return self;
    };
}
- (UIButton * (^)(UIFont *))cd_titleFont{
    return ^(UIFont *a){
        self.titleLabel.font = a;
        return self;
    };
}
- (UIButton * (^)(UIControlContentHorizontalAlignment))cd_contentHorizontalAlignment{
    return ^(UIControlContentHorizontalAlignment a){
        self.contentHorizontalAlignment = a;
        return self;
    };
}
- (UIButton * (^)(UIControlContentVerticalAlignment))cd_contentVerticalAlignment{
    return ^(UIControlContentVerticalAlignment a){
        self.contentVerticalAlignment = a;
        return self;
    };
}
- (UIButton * (^)(UIColor *bg, UIActivityIndicatorViewStyle st))cd_loading{
    return ^(UIColor * b, UIActivityIndicatorViewStyle s){
        UIView * v = [UIView new];
        v.frame = self.bounds;
        v.tag = 68869;
        v.backgroundColor = b;
        [self addSubview:v];
        UIActivityIndicatorView * act = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:s];
        act.frame = v.bounds;
        [act startAnimating];
        [v addSubview:act];
        return self;
    };
}
- (UIButton * (^)(void))cd_hiddenLoading{
    return ^(void){
        [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            if (obj.tag == 68869) {
                [obj removeFromSuperview];
                *stop;
            }
        }];
        return self;
    };
}
@end

#pragma mark ----- UIImageView --------------------
@implementation UIImageView (CD_Chain)
- (UIImageView * (^)(NSArray<NSString*> *names, NSTimeInterval t))cd_animateImageNames{
    return ^(NSArray<NSString*> * imgs, NSTimeInterval time){
        NSMutableArray *imgArray = [NSMutableArray array];
        for (NSString * n in imgs) {
            UIImage *image = [UIImage imageNamed:n];
            [imgArray addObject:image];
        }
        self.animationImages = imgArray;
        /// 持续时间
        self.animationDuration = time;
        //动画重复次数
        self.animationRepeatCount = 1;
        //开始播放动画
        [self startAnimating];
        return self;
    };
}


@end


#pragma mark ----- UILable --------------------
@implementation UILabel (CD_Chain)
- (UILabel * (^)(NSString *))cd_text{
    //__weak typeof(self) weakS = self;
    return ^(NSString * a){
        //__strong typeof(weakS) strongS = weakS;
        self.text = a;
        return self;
    };
}

- (UILabel * (^)(UIColor *))cd_textColor{
    return ^(UIColor * a){
        self.textColor = a;
        return self;
    };
}
- (UILabel * (^)(UIFont *))cd_font{
    return ^(UIFont * a){
        self.font = a;
        return self;
    };
}
- (UILabel * (^)(NSTextAlignment))cd_alignment{
    return ^(NSTextAlignment a){
        self.textAlignment = a;
        return self;
    };
}
- (UILabel * (^)(NSInteger))cd_lines{
    return ^(NSInteger a){
        self.numberOfLines = a;
        return self;
    };
}
- (UILabel * (^)(NSAttributedString *))cd_attributedText{
    return ^(NSAttributedString * a){
        self.attributedText = a;
        return self;
    };
}
- (UILabel * (^)(CGFloat))cd_lineSpacing{
    return ^(CGFloat a){
        //富文本属性
        NSMutableDictionary *textDict = [NSMutableDictionary dictionary];
        //基本属性设置
        //字体颜色
        textDict[NSForegroundColorAttributeName] = self.textColor;
        //字号大小
        textDict[NSFontAttributeName] = self.font;
        //段落样式
        NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
        //行间距
        paraStyle.lineSpacing = a;
        //使用
        //文本段落样式
        textDict[NSParagraphStyleAttributeName] = paraStyle;
        if(self.text.length > 0 ) {
            self.attributedText = [[NSAttributedString alloc] initWithString:self.text attributes:textDict];
        }else if(self.attributedText.length > 0){
            NSMutableAttributedString * atext = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
            [atext setAttributes:textDict range:NSMakeRange(0, self.attributedText.length)];
            self.attributedText = atext;
        }
        return self;
    };
}

@end

#pragma mark ----- UITextField --------------------
@implementation UITextField (CD_Chain)

@end

#pragma mark ----- UITextView --------------------
@implementation UITextView (CD_Chain)

@end

#pragma mark ----- UIScrollView --------------------
@implementation UIScrollView (CD_Chain)

@end

#pragma mark ----- UIScrollView --------------------
@implementation UITableView (CD_Chain)

@end

#pragma mark ----- UIScrollView --------------------
@implementation UICollectionView (CD_Chain)

@end
