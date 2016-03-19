//
//  main.m
//  RotateArray
//
//  Created by Apoorva Gupta on 3/18/16.
//  Copyright © 2016 Apoorva Gupta. All rights reserved.
//

#import <Foundation/Foundation.h>


void rotateArray (NSMutableArray* array, int left, int right)
{
    if(array == NULL || [array count] == 1)
        return;
    while (left<right) {
        
        id temp =  array[left];
        array[left] = array[right];
        array[right] =  temp;
        left++;
        right -- ;
        }
    NSLog(@"rotated array: %@",array);
    
}




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *arrayToRotate = [[NSMutableArray alloc]initWithObjects:@1,@2,@3,@4,@5,@6, nil];
        int order = 2;
        int lengthoffirstpart =(int) [arrayToRotate count] - order;
        rotateArray(arrayToRotate,0,lengthoffirstpart-1);
        rotateArray(arrayToRotate,lengthoffirstpart,(int)[arrayToRotate count]-1);
        rotateArray(arrayToRotate,0,(int) [arrayToRotate count]-1 );
        
        
        
     //   rotateArray(arrayToRotate,);
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
