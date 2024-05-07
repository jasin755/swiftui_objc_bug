//
//  TestObjc.m
//  NativeSwiftUI_ObjcTest
//
//  Created by Nikolaj Pogněrebko on 07.05.2024.
//

#import "TestObjc.h"

@implementation TestObjc

-(instancetype)initWithName:(NSString*)name isSelected:(BOOL)isSelected {
	self.name = name;
	self.isSelected = isSelected;
	return self;
}

- (BOOL)isEqual:(id)other
{
	NSLog(@"isEqual called");
	if (other == self) {
		return YES;
	} else {
		TestObjc *object = (TestObjc *)other;
		return [self.name isEqualToString:object.name] && self.isSelected == object.isSelected;
	}
}

- (NSUInteger)hashValue
{
	return self.name.hash;
}

- (NSUInteger)hash
{
	return self.name.hash;
}

@end

