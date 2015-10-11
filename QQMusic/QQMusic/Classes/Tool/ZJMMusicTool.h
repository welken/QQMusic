//
//  ZJMMusicTool.h
//  QQMusic
//
//  Created by 张峻鸣 on 15/10/11.
//  Copyright © 2015年 zjm. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ZJMMusic;

@interface ZJMMusicTool : NSObject
//* 返回所有歌曲 */
+ (NSArray *)music;
//* 返回当前歌曲 */
+ (ZJMMusic *)playingMusic;
//* 设置当前歌曲 */
+ (void)setPlayingMusic:(ZJMMusic *)playingMusic;
@end
