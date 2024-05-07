//
//  TestObjc.h
//  NativeSwiftUI_ObjcTest
//
//  Created by Nikolaj Pogněrebko on 07.05.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestObjc : NSObject
@property(nonatomic, strong) NSString* name;
@property(nonatomic, assign) BOOL isSelected;

-(instancetype)initWithName:(NSString*)name isSelected:(BOOL)isSelected;
-(BOOL)isEqual:(id)other;

@end

NS_ASSUME_NONNULL_END
