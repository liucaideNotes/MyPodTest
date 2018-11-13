//
//  UIView+CD_Chain.h
//  SIGOODS
//
//  Created by LCD on 2018/8/9.
//  Copyright © 2018年 erazar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#pragma mark ----- UIView --------------------
@interface UIView (CD_Chain)
+ (instancetype)cd_init;
/// 位置和尺寸(以父控件的左上角为坐标原点(0, 0))
- (UIView *(NS_NOESCAPE ^)(CGRect))cd_frame;
/// 位置和尺寸(以自己的左上角为坐标原点(0, 0))
- (UIView *(NS_NOESCAPE ^)(CGRect ))cd_bounds;
/// 中心点(以父控件的左上角为坐标原点(0, 0))
- (UIView *(NS_NOESCAPE ^)(CGPoint ))cd_center;
/// 变形属性(平移\缩放\旋转)
- (UIView *(NS_NOESCAPE ^)(CGAffineTransform ))cd_transform;
/// 自动调整子视图尺寸，默认YES则会根据autoresizingMask属性自动调整子视图尺寸
- (UIView *(NS_NOESCAPE ^)(BOOL))cd_autoresizesSubviews;
/// 自动调整子视图与父视图的位置，默认UIViewAutoresizingNone
- (UIView *(NS_NOESCAPE ^)(UIViewAutoresizing))cd_autoresizingMask;

/// 背景颜色
- (UIView *(NS_NOESCAPE ^)(UIColor* ))cd_bgColor;

- (UIView *(NS_NOESCAPE ^)(UIColor* ))cd_tintColor;
- (UIView *(NS_NOESCAPE ^)(CGFloat ))cd_borderWidth;
- (UIView *(NS_NOESCAPE ^)(UIColor* ))cd_borderColor;
- (UIView *(NS_NOESCAPE ^)(CGFloat ))cd_cornerRadius;
- (UIView *(NS_NOESCAPE ^)(BOOL))cd_clipsToBounds;

- (UIView *(NS_NOESCAPE ^)(CGFloat f, BOOL c))cd_radius_clips;
- (UIView *(NS_NOESCAPE ^)(UIColor *c))cd_shadowColor;
- (UIView *(NS_NOESCAPE ^)(CGSize a))cd_shadowOffset;
- (UIView *(NS_NOESCAPE ^)(float a))cd_shadowOpacity;
- (UIView *(NS_NOESCAPE ^)(CGFloat a))cd_shadowRadius;
- (UIView *(NS_NOESCAPE ^)(NSInteger))cd_tag;
- (UIView *(NS_NOESCAPE ^)(BOOL ))cd_hidden;
- (UIView *(NS_NOESCAPE ^)(BOOL ))cd_userInteractionEnabled;
- (UIView *(NS_NOESCAPE ^)(UIViewContentMode))cd_contentMode;

@end

#pragma mark ----- UIButton --------------------
@interface UIButton (CD_Chain)
- (UIButton * (NS_NOESCAPE ^)(NSString *))cd_title;
- (UIButton * (NS_NOESCAPE ^)(NSString *a, UIControlState b))cd_titleState;
- (UIButton * (NS_NOESCAPE ^)(UIColor *))cd_titleColor;
- (UIButton * (NS_NOESCAPE ^)(UIColor *a, UIControlState b))cd_titleColorState;
- (UIButton * (NS_NOESCAPE ^)(UIFont *))cd_titleFont;
- (UIButton * (NS_NOESCAPE ^)(UIControlContentHorizontalAlignment))cd_contentHorizontalAlignment;
- (UIButton * (NS_NOESCAPE ^)(UIControlContentVerticalAlignment))cd_contentVerticalAlignment;

- (UIButton * (NS_NOESCAPE ^)(UIColor *bg, UIActivityIndicatorViewStyle st))cd_loading;
- (UIButton * (NS_NOESCAPE ^)(void))cd_hiddenLoading;

@end

#pragma mark ----- UIImageView --------------------
@interface UIImageView (CD_Chain)
- (UIImageView * (NS_NOESCAPE ^)(NSMutableArray<NSString*> *names, NSTimeInterval t))cd_animateImageNames;
@end


#pragma mark ----- UILable --------------------
@interface UILabel (CD_Chain)
- (UILabel * (NS_NOESCAPE ^)(NSString *))cd_text;
- (UILabel * (NS_NOESCAPE ^)(UIColor *))cd_textColor;
- (UILabel * (NS_NOESCAPE ^)(UIFont *))cd_font;
- (UILabel * (NS_NOESCAPE ^)(NSTextAlignment))cd_alignment;
- (UILabel * (NS_NOESCAPE ^)(NSInteger))cd_lines;
- (UILabel * (NS_NOESCAPE ^)(NSAttributedString *))cd_attributedText;
/// 行间距、会将lab.text 转化为 lab.attributedText 这个行距对应关系：10 -> 20px，如果希望得到20px的行距，实际输入10即可
- (UILabel * (NS_NOESCAPE ^)(CGFloat))cd_lineSpacing;

@end

#pragma mark ----- UITextField --------------------
@interface UITextField (CD_Chain)

@end

#pragma mark ----- UITextView --------------------
@interface UITextView (CD_Chain)

@end

#pragma mark ----- UIScrollView --------------------
@interface UIScrollView (CD_Chain)

@end

#pragma mark ----- UIScrollView --------------------
@interface UITableView (CD_Chain)

@end

#pragma mark ----- UIScrollView --------------------
@interface UICollectionView (CD_Chain)

@end
