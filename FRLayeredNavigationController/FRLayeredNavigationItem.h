/*     This file is part of FRLayeredNavigationController.
 *
 * FRLayeredNavigationController is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * FRLayeredNavigationController is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with FRLayeredNavigationController.  If not, see <http://www.gnu.org/licenses/>.
 *
 *
 *  Copyright (c) 2012, Johannes Weiß <weiss@tux4u.de> for factis research GmbH.
 */

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@interface FRLayeredNavigationItem : NSObject {
    CGPoint initialViewPosition;
    CGPoint currentViewPosition;
    NSString *title;
    UIView *titleView;
    CGFloat width;
    CGFloat nextItemDistance;
    BOOL hasChrome;
}

@property (nonatomic, readwrite, assign) CGPoint initialViewPosition;
@property (nonatomic, readwrite, assign) CGPoint currentViewPosition;
@property (nonatomic, readwrite, retain) NSString *title;
@property (nonatomic, readwrite, retain) UIView *titleView;
@property (nonatomic, readwrite, assign) CGFloat width;
@property (nonatomic, readwrite, assign) CGFloat nextItemDistance;
@property (nonatomic, readwrite, assign) BOOL hasChrome;

@end