//
//  ViewController.m
//  Dictionary
//
//  Created by Anatoly Ryavkin on 12/09/2019.
//  Copyright © 2019 AnatolyRyavkin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.textViewDict initPropertys];

    NSLog(@"count=%lu",(unsigned long)self.textViewDict.string.length);

    self.textViewDict.text = self.textViewDict.string;
        self.ollString = [[NSMutableString alloc]initWithString: self.textViewDict.string];

    
/*

    NSString*ollString = self.textViewDict.string;

    NSMutableString*mutString = [[NSMutableString alloc]initWithString:ollString];

    for(int i=0;i<ollString.length;i++){
        unichar asciiCode = [ollString characterAtIndex:i];
        NSString*str = [NSString stringWithCharacters:&asciiCode length:1];
        if(asciiCode>10000 && asciiCode!=56321 && asciiCode!=56322 && asciiCode!=56323 && asciiCode!=56324 && asciiCode!=56325 && asciiCode!=56326 && asciiCode!=56327 && asciiCode!=56328 && asciiCode!=56329 && asciiCode!=56330 && asciiCode!=56331 && asciiCode!=61664 && asciiCode!=61601 && asciiCode!=56319 && asciiCode!=9674 && asciiCode!=61627 && asciiCode!=56332 && asciiCode!=56333 && asciiCode!=56334 && asciiCode!=56335 && asciiCode!=61566 && asciiCode!=56320
           && asciiCode!=61472 && asciiCode!=61473 && asciiCode!=61499 && asciiCode!=56426 && asciiCode!=61620 ){
            NSLog(@"i=%d",i);
            NSLog(@"ctr=%@",str);
            NSLog(@"ascii=%hu",asciiCode);
        }
    }

    [mutString deleteCharactersInRange:NSMakeRange(5385612, 5386751-5385612)];

    self.textViewDict.text = mutString;


    NSString *fileName = @"savedString2.txt";
    NSString *path = [@"/Users/ryavkinto/Documents/Objective C/1" stringByAppendingPathComponent:fileName];
    [[NSFileManager defaultManager] createFileAtPath:path contents:nil attributes:nil];
    NSError*error = nil;
    [mutString writeToFile:path atomically:YES encoding: NSUnicodeStringEncoding error:&error];
    if(error!=nil)
        NSLog(@"error :%@",[error description]);


    NSMutableString *stringNumber1 = [[NSMutableString alloc]init];
    NSMutableString *stringNumber2 = [[NSMutableString alloc]init];
    NSMutableString *stringChar1 = [[NSMutableString alloc]init];
    NSMutableString *stringChar2 = [[NSMutableString alloc]init];

    unichar ci = 769;
    NSString *stri = [NSString stringWithCharacters:&ci length:1];

    for(int i=0;i<ollString.length;i++){
        unichar cc = [ollString characterAtIndex:i];
        NSString*str = [NSString stringWithCharacters:&cc length:1];
        if(cc == 56321 || cc == 180){
            [mutString replaceCharactersInRange:NSMakeRange(i, 1) withString:stri];
        }
    }

    self.textViewDict.text = mutString;
    ollString = self.textViewDict.text;

    NSString *fileName = @"savedString1.txt";
    NSString *path = [@"/Users/ryavkinto/Documents/Objective C/1" stringByAppendingPathComponent:fileName];
    [[NSFileManager defaultManager] createFileAtPath:path contents:nil attributes:nil];
    NSError*error = nil;
    [ollString writeToFile:path atomically:YES encoding: NSUnicodeStringEncoding error:&error];
    if(error!=nil)
        NSLog(@"error :%@",[error description]);
*/




/*
    for(int i=0;i<ollString.length;i++){
        unichar cc = [ollString characterAtIndex:i];
        NSString*str = [NSString stringWithCharacters:&cc length:1];

        if(i>276040 && i<276080){
            [stringNumber1 appendFormat:@"%@",[NSString stringWithCharacters:&cc length:1]];
            NSLog(@"ch=%@",str);
        }
        if(i>683250 && i<683350){
            [stringNumber2 appendFormat:@"%@",[NSString stringWithCharacters:&cc length:1]];
             NSLog(@" i = %d",i);
            NSLog(@"cc=%@",str);
            NSLog(@"ctr=%@",str);
        }
        if(i>3610600 && i<3610700){
            [stringChar1 appendFormat:@"%@",[NSString stringWithCharacters:&cc length:1]];
            NSLog(@"ch=%@",str);
        }
        if(i>3611350 && i<3611450){
            [stringChar2 appendFormat:@"%@",[NSString stringWithCharacters:&cc length:1]];
            NSLog(@"ch=%@",str);
        }

        if([ollString characterAtIndex:i]==56321){
            NSLog(@"emphasis - 56321");
            NSLog(@" i = %d",i);
            NSLog(@"stN1 - %@",stringNumber1);
            NSLog(@"stN2 - %@",stringNumber2);
        }

        if([str isEqualToString:string]){
            if([ollString characterAtIndex:i]==56320)
                NSLog(@"emphasis - 56320");
            NSLog(@"cc=%d",cc);
            NSLog(@"ctr=%@",str);
            NSLog(@" i = %d",i);
            NSLog(@"emphasis -  \"´\"");
            //NSLog(@"stH1 - %@",stringChar1);
           // NSLog(@"stH2 - %@",stringChar2);
        }
        if([ollString characterAtIndex:i]==56320){
            NSLog(@"emphasis - 56320");
            NSLog(@"cc=%d",cc);
            NSLog(@"ctr=%@",str);
            NSLog(@" i = %d",i);
            NSLog(@"emphasis -  \"´\"");
        }
    }

    NSLog(@"stN1 - %@",stringNumber1);
    NSLog(@"stN2 - %@",stringNumber2);
    NSLog(@"stH1 - %@",stringChar1);
    NSLog(@"stH2 - %@",stringChar2);

    for(int i=0;i<ollString.length;i++){
        if([ollString characterAtIndex:i]==61664){
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:romb]];
        }
        if([ollString characterAtIndex:i]==61601)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:"■"]];
        if([ollString characterAtIndex:i]==56321)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:emphasis]];
        if([ollString characterAtIndex:i]==56319){
            NSMutableString*mutString = [[NSMutableString alloc]initWithString:ollString];
            [mutString deleteCharactersInRange:NSMakeRange(i, 1)];
            ollString = mutString;
            //ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 0) withString:[NSString stringWithUTF8String:""]];
        }
        if([ollString characterAtIndex:i]==56322)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:lowerApostrophe]];
        if([ollString characterAtIndex:i]==56323)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:upperApostrophe]];
        if([ollString characterAtIndex:i]==56324)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:"ʌ"]];
        if([ollString characterAtIndex:i]==56325){
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:"æ"]];
            //NSLog(@"i = %i, %@", i,[NSString stringWithUTF8String:"æ"]);
        }
        if([ollString characterAtIndex:i]==56326)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:"ɑ:"]];
        if([ollString characterAtIndex:i]==56327)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:"i:"]];
        if([ollString characterAtIndex:i]==56328)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:"ɔ:"]];
        if([ollString characterAtIndex:i]==56329)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:"ʒ"]];
        if([ollString characterAtIndex:i]==56330)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:"з"]];
        if([ollString characterAtIndex:i]==56331)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:"u:"]];
        if([ollString characterAtIndex:i]==61627)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:"≈"]];
        if([ollString characterAtIndex:i]==61620)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:"x"]];
        if([ollString characterAtIndex:i]==56332)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 0) withString:[NSString stringWithUTF8String:""]];
        if([ollString characterAtIndex:i]==56333)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:"ʤ"]];
        if([ollString characterAtIndex:i]==56334)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:"tʃ"]];
        if([ollString characterAtIndex:i]==56335)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:"ŋ"]];
        if([ollString characterAtIndex:i]==61566)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:"~"]];
        if([ollString characterAtIndex:i]==56320)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:emphasis]];
        if([ollString characterAtIndex:i]==61472)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 0) withString:[NSString stringWithUTF8String:""]];
        if([ollString characterAtIndex:i]==61473)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:"!"]];
        if([ollString characterAtIndex:i]==61499)
            ollString = [ollString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithUTF8String:";"]];
    }
    self.textViewDict.string =ollString;
    self.textViewDict.text = self.textViewDict.string;
    NSMutableArray*array = [[NSMutableArray alloc] initWithArray: [ollString componentsSeparatedByString:@" "]];
    NSMutableCharacterSet* set = [[NSMutableCharacterSet alloc]init];
    [set addCharactersInString:@" "];
    [set addCharactersInString:@"  "];
    [set addCharactersInString:@"\n"];
    array = [ollString componentsSeparatedByCharactersInSet:set];
    NSMutableString*mutableString = [[NSMutableString alloc]init];
    //for(int j=0;j<array.count;j++){
    //for(int j=500000;j<array.count;j++){
    for(int j=0;j<802300;j++){
        NSString*string = [array objectAtIndex:j];
            for(int i=0;i<string.length;i++){
                int asciiCode = [string characterAtIndex:i];
                if(asciiCode>9000 && asciiCode!=56321 && asciiCode!=56322 && asciiCode!=56323 && asciiCode!=56324 && asciiCode!=56325 && asciiCode!=56326 && asciiCode!=56327 && asciiCode!=56328 && asciiCode!=56329 && asciiCode!=56330 && asciiCode!=56331 && asciiCode!=61664 && asciiCode!=61601 && asciiCode!=56319 && asciiCode!=9674 && asciiCode!=61627 && asciiCode!=56332 && asciiCode!=56333 && asciiCode!=56334 && asciiCode!=56335 && asciiCode!=61566 && asciiCode!=56320
                   && asciiCode!=61472 && asciiCode!=61473 && asciiCode!=61499 && asciiCode!=56426 && asciiCode!=61620 ){
                    NSLog(@" code=%d      simbol=%@     char = %c",asciiCode,[NSString stringWithFormat:@"%c", asciiCode],[string characterAtIndex:i]);
                    NSLog(@" string=%@       number string j = %d    number char i=%d",string,j,i);//                string=%@               stringOld= %@ %@ %@ %@ %@",j,i,string,array[j-1],array[j-2],array[j-2],array[j-2],array[j-2]);
                    for(int k=5;k>-5;k--){
                        if(k==0)
                            NSLog(@"------------   first responder string  = %@",array[j]);
                        else
                            NSLog(@"---- string around = %@",array[j-k]);
                    [mutableString appendFormat:@"%@\n",array[j-k]];
                    }
                    NSLog(@"                        ");
                    NSLog(@"                        ");
                    NSLog(@"                        ");
               }
        }
        [mutableString appendFormat:@"%@\n",string];
    }
    NSLog(@"ArrayCount=%lu",(unsigned long)array.count);
    NSLog(@"str=%@",ollString);
    self.textViewDict.string =ollString;
    self.textViewDict.text = self.textViewDict.string;


    self.textViewDict.text = self.textViewDict.string;



    NSString *fileName = @"savedString.txt";
    NSString *path = [@"/Users/ryavkinto/Documents/Objective C/1" stringByAppendingPathComponent:fileName];
    //[[NSFileManager defaultManager] createFileAtPath:path contents:[ollString dataUsingEncoding:NSUTF8StringEncoding] attributes:nil];
    [[NSFileManager defaultManager] createFileAtPath:path contents:nil attributes:nil];
    NSError*error = nil;
    [ollString writeToFile:path atomically:YES encoding: NSUnicodeStringEncoding error:&error];
    if(error!=nil)
        NSLog(@"error :%@",[error description]);
*/
}

-(void)viewDidAppear:(BOOL)animated{

    /*

    [self.ollString deleteCharactersInRange:NSMakeRange(0,7000)];

    NSMutableCharacterSet*set = [[NSMutableCharacterSet alloc]init];
    [set addCharactersInString:@"_ \n"];

    NSArray *arrayWords = [self.ollString componentsSeparatedByCharactersInSet:set];

    AVObjectElement*objects = [[AVObjectElement alloc]init];
    objects.arrayObject = [[NSMutableArray alloc]init];

    NSMutableArray*array = [[NSMutableArray alloc]init];
    for(int i =0;i<arrayWords.count-1;i++){
        NSString* str = arrayWords[i];
        char* c = "[";
        if(![str isEqual:@""]){
            if([str characterAtIndex:0] == *c){

                [objects.arrayObject addObject:array];
                array = [[NSMutableArray alloc]init];
            }
        }
        if(i!=0)
            [array addObject:arrayWords[i-1]];
    }


    for(NSArray*array in objects.arrayObject){
        NSLog(@"---------------------object--------------------");
        for(NSString*str in array){
            NSLog(@"-------%@",str);
        }
    }

     */


//clip down up

    //NSLog(@"old=%@",self.ollString);
        [self.ollString deleteCharactersInRange:NSMakeRange(0,8251)];
    //NSLog(@"new=%@",self.ollString);


//divide at [ and insert [
    NSMutableCharacterSet*set = [[NSMutableCharacterSet alloc]init];
    [set addCharactersInString:@"["];

    NSArray *arrayWords = [self.ollString componentsSeparatedByCharactersInSet:set];
    
    NSMutableArray*mArray = [[NSMutableArray alloc]init];

    for(NSString*str in arrayWords){
        static int i=0;

            NSMutableString*mstr = [[NSMutableString alloc]initWithString:str];
         if(i!=0)
            [mstr insertString:@"[" atIndex:0];
         [mArray addObject:mstr];
        i++;
    }



//divide at workspacse and print

    NSMutableArray *arraySeparateSpase = [[NSMutableArray alloc]init];

    set = [[NSMutableCharacterSet alloc]init];
    [set addCharactersInString:@" "];
    [set addCharactersInString:@"\n"];

    for(int i=0;i<mArray.count-1;i++){
        NSMutableArray*array = [NSMutableArray arrayWithArray: [[mArray objectAtIndex:i] componentsSeparatedByCharactersInSet:set]];
        [arraySeparateSpase addObject:array];
    }



//delete zero string

    for(NSMutableArray*arrayObject in arraySeparateSpase){
        NSInteger flagEnd=0;
        while (flagEnd!=YES) {
            [self arrayRemoveString:arrayObject atString:@" " andAtString:@"" andAtStringDel3:@"[" andFlag:&flagEnd];
        }
    }

/*
    int i1 = 0;
    for(NSArray*array in arraySeparateSpase){
        NSLog(@"-----------------------object %d",i1);
        i1++;
        for(NSString*str in array){
            NSLog(@"-----%@",str);
        }
    }
*/


//remove \n and wordspace


// displacement main word from end object to begin next object

    for(int j=0;j<arraySeparateSpase.count;j++){
        NSMutableArray*arrayObject = arraySeparateSpase[j];
        for(int i=(int)arrayObject.count-1;i>=0;i--){
            NSString*string = arrayObject[i];
            if([string characterAtIndex:0]>=65 && [string characterAtIndex:0]<=122 && j<arraySeparateSpase.count-1){//} && ![string isEqualToString:@"I"] &&
               // ![string isEqualToString:@"II"] && ![string isEqualToString:@"III"] && ![string isEqualToString:@"IV"] && ![string isEqualToString:@"V"]){

                [arraySeparateSpase[j+1] insertObject:string atIndex:0];
                [arrayObject removeLastObject];

            }
            else
                break;
        }
    }

    //remove empti objects

    NSMutableArray*arrayMain = [NSMutableArray new];

    for(NSMutableArray*array in arraySeparateSpase){
        if(array.count!=0)
            [arrayMain addObject:array];
    }
    arraySeparateSpase=nil;



    for(NSMutableArray*array in arrayMain){
        for(int i=0;i<array.count-1;i++){
            NSMutableString*string = [NSMutableString stringWithString:array[i]];

            NSUInteger count = string.length;
            unichar cc = [string characterAtIndex:count-1];
            NSString*str = [NSString stringWithCharacters:&cc length:1];

            if([str isEqualToString:@"-"]){
                [string replaceCharactersInRange:NSMakeRange(count-1, 1) withString:array[i+1]];
                array[i] = string;
                array[i+1] = @" ";
            }
        }
    }

    for(NSMutableArray*arrayObject in arrayMain){
        NSInteger flagEnd=0;
        while (flagEnd!=YES) {
            [self arrayRemoveString:arrayObject atString:@" " andAtString:@"" andAtStringDel3:@"[" andFlag:&flagEnd];
        }
    }

    for(NSMutableArray*array in arrayMain){
        for(int i=0;i<array.count-1;i++){
            NSMutableString*string = [NSMutableString stringWithString:array[i]];

            NSUInteger count = string.length;
            unichar cc = [string characterAtIndex:count-1];
            NSString*str = [NSString stringWithCharacters:&cc length:1];

            if([str isEqualToString:@"-"]){
                [string replaceCharactersInRange:NSMakeRange(count-1, 1) withString:array[i+1]];
                array[i] = string;
                array[i+1] = @" ";
            }
        }
    }



    int i = 0;
    for(NSArray*array in arrayMain){
        NSLog(@"-----------------------object %d",i);
        i++;
        for(NSString*str in array){
            NSLog(@"-----%@",str);
        }
    }
}

-(void)arrayRemoveString:(NSMutableArray*)array atString:(NSString*)stringDel1 andAtString:(NSString*)stringDel2 andAtStringDel3:(NSString*)stringDel3 andFlag:(NSInteger*)flagEnd{
    *flagEnd = 0;
    for(NSString*string in array){
        if([string isEqualToString:stringDel1] || [string isEqualToString:stringDel2] || [string isEqualToString:stringDel3] ){
            [array removeObject:string];
            break;
        }
    }
     *flagEnd = 1;
}

@end
