//
//  ViewController.m
//  FKJianShuDemo_FontAttributes
//
//  Created by 周宏辉 on 2016/12/2.
//  Copyright © 2016年 ForKid. All rights reserved.
//

#import "ViewController.h"

#ifndef FK_W_H_
#define kWidth  [UIScreen mainScreen].bounds.size.width
#define kHeight [UIScreen mainScreen].bounds.size.height
#endif

@interface ViewController ()
<UITextViewDelegate>


@property (nonatomic, strong) UILabel *testLabel;

@end

static NSString *const kTestString1 = @"测试字符串1";
static NSString *const kTestString2 = @"测试字符串段落1\n测试字符串段落2";
static NSString *const kTestString3 = @"I am ForKid";


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSFontAttributeName
    
    
    
    [self.view addSubview:self.testLabel];
    
//    [self testForFontAttributeName];
//    [self testForParagraphAttributeName];
//    [self testForForegroundColorAttributeName];
//    [self testForBackgroundColorAttributeName];
//    [self testForLigatureAttributeName];
//    [self testForKernAttributeName];
//    [self testForStrikethroughStyleAttributeName];
//    [self testForStrikethroughColorAttributeName];
//    [self testForUnderLineAttributeName];
//    [self testForShadowLineAttributeName];
//    [self testForLinkAttributeName];
//    [self testForBaselineOffsetAttributeName];
//    [self testForObliquenessAttributeName];
//    [self testForExpansionAttributeName];
//    [self testForStrokeAttributeName];
//    [self testForAttachmentAttributeName];
    
}

#pragma mark -- 字体样式

-(void)testForFontAttributeName{
    
    NSRange range = NSMakeRange(0, kTestString1.length);
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:kTestString1];
    [attributeString addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:40.f] range:range];
    self.testLabel.attributedText = attributeString;
    
}

#pragma mark -- 段落样式
-(void)testForParagraphAttributeName{
    
    NSRange range = NSMakeRange(0, kTestString2.length);
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:kTestString2];
    
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.lineSpacing = 20.f;
    
    [attributeString addAttribute:NSParagraphStyleAttributeName value:paragraph range:range];
    self.testLabel.attributedText = attributeString;
    
}

#pragma mark -- 文字前颜色
-(void)testForForegroundColorAttributeName{
    NSRange range = NSMakeRange(0, kTestString1.length);
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:kTestString1];

    [attributeString addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:range];
    self.testLabel.attributedText = attributeString;
}

#pragma mark -- 文字背景色
-(void)testForBackgroundColorAttributeName{
    NSRange range = NSMakeRange(0, kTestString1.length);
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:kTestString1];
    
    [attributeString addAttribute:NSBackgroundColorAttributeName value:[UIColor redColor] range:range];
    self.testLabel.attributedText = attributeString;
}


#pragma mark -- 连体字 (这个很少用到)
-(void)testForLigatureAttributeName{
    NSRange range = NSMakeRange(0, kTestString3.length);
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:kTestString3];
    //0无连体效果,1连体效果
    [attributeString addAttribute:NSLigatureAttributeName value:@(1) range:range];
    self.testLabel.attributedText = attributeString;
}


#pragma mark -- 字符间距
-(void)testForKernAttributeName{
    NSRange range = NSMakeRange(0, kTestString1.length);
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:kTestString1];
    [attributeString addAttribute:NSKernAttributeName value:@(20) range:range];
    self.testLabel.attributedText = attributeString;
}

#pragma Mark -- 删除线
-(void)testForStrikethroughStyleAttributeName{
    NSRange range = NSMakeRange(0, kTestString1.length);
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:kTestString1];
    //1~7单线,依次加粗
    //9~15:双线,依次加粗
    [attributeString addAttribute:NSStrikethroughStyleAttributeName value:@(11) range:range];
    self.testLabel.attributedText = attributeString;
}


#pragma mark -- 删除线颜色
-(void)testForStrikethroughColorAttributeName{
    NSRange range = NSMakeRange(0, kTestString1.length);
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:kTestString1];
    [attributeString addAttribute:NSStrikethroughStyleAttributeName value:@(7) range:range];
    [attributeString addAttribute:NSStrikethroughColorAttributeName value:[UIColor blueColor] range:range];
    self.testLabel.attributedText = attributeString;
}


#pragma mark -- 下划线样式及颜色
-(void)testForUnderLineAttributeName{
    NSRange range = NSMakeRange(0, kTestString1.length);
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:kTestString1];
    //1~7单线,依次加粗
    //9~15:双线,依次加粗
    [attributeString addAttribute:NSUnderlineStyleAttributeName value:@(NSUnderlineStyleThick) range:range];
    [attributeString addAttribute:NSUnderlineColorAttributeName value:[UIColor redColor] range:range];
    self.testLabel.attributedText = attributeString;
}

#pragma mark -- 阴影
-(void)testForShadowLineAttributeName{
    NSRange range = NSMakeRange(0, kTestString1.length);
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:kTestString1];

    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowOffset = CGSizeMake(5, 5);
    shadow.shadowColor = [UIColor redColor];
    shadow.shadowBlurRadius = 0;//模糊效果
    
    [attributeString addAttribute:NSShadowAttributeName value:shadow range:range];
    self.testLabel.attributedText = attributeString;
}


#pragma mark -- 超链接
-(void)testForLinkAttributeName{
    NSRange range = NSMakeRange(0, kTestString1.length);
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:kTestString1];
    [attributeString addAttribute:NSLinkAttributeName value:@"https://www.baidu.com" range:range];
    self.testLabel.attributedText = attributeString;
}

#pragma mark -- 基线偏移量
-(void)testForBaselineOffsetAttributeName{
    NSRange range = NSMakeRange(0, kTestString1.length);
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:kTestString1];
    [attributeString addAttribute:NSUnderlineStyleAttributeName value:@(2) range:range];
    [attributeString addAttribute:NSUnderlineColorAttributeName value:[UIColor redColor] range:range];
    [attributeString addAttribute:NSBaselineOffsetAttributeName value:@(0) range:range];
    
    
    NSMutableAttributedString *attributeString2 = [[NSMutableAttributedString alloc] initWithString:@"偏移测试"];
    [attributeString2 addAttribute:NSUnderlineStyleAttributeName value:@(2) range:NSMakeRange(0, 4)];
    [attributeString2 addAttribute:NSUnderlineColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 4)];
    [attributeString2 addAttribute:NSBaselineOffsetAttributeName value:@(-20) range:NSMakeRange(0, 4)];
    
    [attributeString appendAttributedString:attributeString2];
    self.testLabel.font = [UIFont boldSystemFontOfSize:16.f];
    self.testLabel.attributedText = attributeString;

}


#pragma mark -- 字体倾斜
-(void)testForObliquenessAttributeName{
    NSRange range = NSMakeRange(0, kTestString1.length);
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:kTestString1];
    //正值右倾,负值左倾
    [attributeString addAttribute:NSObliquenessAttributeName value:@(1) range:range];
    self.testLabel.attributedText = attributeString;
   
    
}


#pragma mark -- 字体拉伸
-(void)testForExpansionAttributeName{
    NSRange range = NSMakeRange(0, kTestString1.length);
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:kTestString1];
    //正值右倾,负值左倾
    [attributeString addAttribute:NSExpansionAttributeName value:@(1) range:range];
    self.testLabel.font = [UIFont boldSystemFontOfSize:20.f];
    self.testLabel.attributedText = attributeString;
    
}

#pragma mark -- 描边

-(void)testForStrokeAttributeName{
    NSRange range = NSMakeRange(0, kTestString1.length);
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:kTestString1];
    //正值镂空,负值描边
    [attributeString addAttribute:NSStrokeColorAttributeName value:[UIColor redColor] range:range];
    [attributeString addAttribute:NSStrokeWidthAttributeName value:@(-3) range:range];
    self.testLabel.attributedText = attributeString;
    
}


#pragma mark -- 图文混排
-(void)testForAttachmentAttributeName{
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:kTestString1];

    
    UIImage *image = [UIImage imageNamed:@"test.jpg"];
    
    //创建一个NSTextAttachement对象
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image = image;
    CGFloat height = [kTestString1 sizeWithAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:24.f]}].height;
    //如果宽度大于剩余的宽度 则会从另行开始
    attachment.bounds = CGRectMake(0, 0, height, height);
    
    

    
    NSAttributedString *att = [NSAttributedString attributedStringWithAttachment:attachment];
    //拼接到最后面
    [attributeString appendAttributedString:att];
    //放入指定位置
    [attributeString insertAttributedString:att atIndex:3];
    


    self.testLabel.font = [UIFont boldSystemFontOfSize:24.f];
    self.testLabel.attributedText = attributeString;
}







-(UILabel *)testLabel{
    if (!_testLabel) {
        _testLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, kWidth - 20, kHeight)];
        _testLabel.backgroundColor = [UIColor lightGrayColor];
        _testLabel.numberOfLines = 0;
        _testLabel.font = [UIFont boldSystemFontOfSize:50.f];
    }
    return _testLabel;
}



@end
