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

-(void)arrayRemoveStringNumberPage:(NSMutableArray*)array{
    int i = 0;
    for(NSString*string in array){
        if([string integerValue] >= 12){
            NSLog(@"stringInteger = %@ string stringUpNum = %@",string,array[i-1]);
        }
        i++;
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
       // [self.ollString deleteCharactersInRange:NSMakeRange(0,8251)];
   // [self.ollString deleteCharactersInRange:NSMakeRange(0,1)];
    //NSLog(@"new=%@",self.ollString);


    //replasement "■"




    self.ollString = [NSMutableString stringWithString: [self.ollString stringByReplacingOccurrencesOfString:@"■" withString:@" [■] "]];
    self.ollString = [NSMutableString stringWithString: [self.ollString stringByReplacingOccurrencesOfString:@"⃟" withString:@"  ◊ "]];

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

    //[self printArray:arraySeparateSpase];



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

/*
    for(NSMutableArray*arrayObject in arraySeparateSpase){
        NSInteger flagEnd=0;
        while (flagEnd!=YES) {
            [self arrayRemoveString:arrayObject atString:@"" andAtString:@"II" andAtStringDel3:@"III" andFlag:&flagEnd];
        }
    }

    for(NSMutableArray*arrayObject in arraySeparateSpase){
        NSInteger flagEnd=0;
        while (flagEnd!=YES) {
            [self arrayRemoveString:arrayObject atString:@"IV" andAtString:@"V" andAtStringDel3:@"VI" andFlag:&flagEnd];
        }
    }

 */
///// перенос engl words from down at object to up at another object

    for(int j=1;j<arraySeparateSpase.count-1;j++){
        NSMutableArray*arrayObject = arraySeparateSpase[j];
        BOOL flagEndPlasement = NO;
        for(int i=(int)arrayObject.count-1;i>=0;i--){
            NSString*string = arrayObject[i];

            if([string characterAtIndex:0]>=65 && [string characterAtIndex:0]<=122 && flagEndPlasement == NO && ![arraySeparateSpase[j-1]  isEqual: @"="] && j<37802){
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



/////////delete rus && num

    int j = 0;
    for(NSMutableArray*array in arrayMain){
        for(int i=0;i<array.count-1;i++){
            if([array[i]  isEqual: @""])
                break;
            NSMutableString*string = [NSMutableString stringWithString:array[i]];
            NSUInteger count = string.length;
            unichar cc = [string characterAtIndex:count-1];
            NSString*str = [NSString stringWithCharacters:&cc length:1];

            if([str isEqualToString:@"-"] && [array[i+1] integerValue]>12){
                //NSLog(@"vallue :  j=  %d  i= %d  string =  %@     %@   %@             intValue = %ld",j,i,string,array[i+1],array[i+2], (long)[array[i+1] integerValue]);
                [string deleteCharactersInRange:NSMakeRange(string.length-1,1)];
                int k = i+1;
                while (YES) {
                    int c =  [array[k] characterAtIndex:0];
                    if(c >= 1040 && c <= 1103){
                        array[i] = [NSString stringWithFormat:@"%@%@",string,array[k]];
                        array[k] = @"";
                        break;
                    }
                    array[k] = @"";
                    k++;
                }
                str = @"";
            }
        }
    }

    for(NSMutableArray*arrayObject in arrayMain){
        NSInteger flagEnd=0;
        while (flagEnd!=YES) {
            [self arrayRemoveString:arrayObject atString:@"" andAtString:@"" andAtStringDel3:@"" andFlag:&flagEnd];
        }
    }
/*
    for(int j = 1094 ; j<1095 ; j++){
        NSArray*array = arrayMain[j];
        NSLog(@"------------------------------- ");
        for(NSString*str in array){
            NSLog(@"-----%@",str);
        }
    }

 */


////////////////////// delete rus && rus

    j = 0;
    for(NSMutableArray*array in arrayMain){
        for(int i=0;i<array.count-1;i++){
            if([array[i]  isEqual: @""]){
                while ([array[i]  isEqual: @""]) {
                    i++;
                }
            }
            NSMutableString*string = [NSMutableString stringWithString:array[i]];

            NSUInteger count = string.length;
            unichar cc = [string characterAtIndex:count-1];
            NSString*str = [NSString stringWithCharacters:&cc length:1];

            if([str isEqualToString:@"-"] && ![array[i+1] integerValue]){

                int n = [array[i+1] characterAtIndex:0];
                int k = [array[i] characterAtIndex:0];
                if(k>1039 && k<1104 && n>1039 && n<1104){
                    //NSLog(@" ======================  dont value: j=  %d i= %d  string =  %@     %@     ",j,i,string,array[i+1]);
                    [string replaceCharactersInRange:NSMakeRange(count-1, 1) withString:array[i+1]];
                    array[i] = string;
                    array[i+1] = @"";
                }
            }
        }
        j++;
    }


    for(NSMutableArray*arrayObject in arrayMain){
        NSInteger flagEnd=0;
        while (flagEnd!=YES) {
            [self arrayRemoveString:arrayObject atString:@"" andAtString:@"" andAtStringDel3:@"" andFlag:&flagEnd];
        }
    }

///////////// delete rus -eng



    j = 0;
    for(NSMutableArray*array in arrayMain){
        for(int i=0;i<array.count-1;i++){
            if([array[i]  isEqual: @""]){
                while ([array[i]  isEqual: @""]) {
                    i++;
                }
            }

            if(i<array.count){
                if(([array[i] isEqualToString:@"необыч-"] && [array[i+1] isEqualToString:@"exhaustion"])||
                   ([array[i] isEqualToString:@"вол-"] && [array[i+1] isEqualToString:@"behaviour"])||
                   ([array[i] isEqualToString:@"неощути-"] && [array[i+1] isEqualToString:@"immense"])||
                   ([array[i] isEqualToString:@"оча-"] && [array[i+1] isEqualToString:@"priest"])){
                        //NSLog(@"");
                        i++;
                }
            }

            NSMutableString*string = [NSMutableString stringWithString:array[i]];
            NSUInteger count = string.length;
            unichar cc = [string characterAtIndex:count-1];
            NSString*str = [NSString stringWithCharacters:&cc length:1];

            if([str isEqualToString:@"-"] && ![array[i+1] integerValue]){

                int n = [array[i+1] characterAtIndex:0];

                int k = [array[i] characterAtIndex:0];

                if(k>1039 && k<1104 && n>64 && n<123){
                   // NSLog(@" -------------   dont value: j=  %d i= %d         %@     %@   %@    ",j,i,string,array[i+1],array[i+2]);
                    if([string isEqualToString:@"улетучивать-"]){
                        array[i+1] = @"";
                        array[i+2] = @"";
                        array[i+3] = @"";
                        [string replaceCharactersInRange:NSMakeRange(count-1, 1) withString:array[i+4]];
                        array[i] = string;
                    }
                    else{
                        array[i+1] = @"";
                        array[i+2] = @"";
                        [string replaceCharactersInRange:NSMakeRange(count-1, 1) withString:array[i+3]];
                        array[i] = string;
                    }

                }
            }
        }
        j++;
    }

    for(NSMutableArray*arrayObject in arrayMain){
        NSInteger flagEnd=0;
        while (flagEnd!=YES) {
            [self arrayRemoveString:arrayObject atString:@"" andAtString:@"" andAtStringDel3:@"" andFlag:&flagEnd];
        }
    }


    ////////////////////////////////// en-rus


    j = 0;
    for(NSMutableArray*array in arrayMain){
        for(int i=0;i<array.count-1;i++){
            if([array[i]  isEqual: @""]){
                while ([array[i]  isEqual: @""]) {
                    i++;
                }
            }
            NSMutableString*string = [NSMutableString stringWithString:array[i]];
            NSUInteger count = string.length;
            unichar cc = [string characterAtIndex:count-1];
            NSString*str = [NSString stringWithCharacters:&cc length:1];
            int ch = [string characterAtIndex:0];


            if([str isEqualToString:@"-"] && ![array[i+1] integerValue]){

                int n = [array[i+1] characterAtIndex:0];
                int k = [array[i] characterAtIndex:0];

                if(k>64 && k<123 && n>1039 && n<1104){
                         //NSLog(@" ======================  dont value: j=  %d i= %d  string =  %@     %@     ",j,i,string,array[i+1]);
                    if(![string isEqualToString:@"pro-"]){
                        [string replaceCharactersInRange:NSMakeRange(count-1, 1) withString:array[i+1]];
                        array[i] = string;
                        array[i+1] = @"";
                    }
                }
            }

        }
        j++;
    }

    for(NSMutableArray*arrayObject in arrayMain){
        NSInteger flagEnd=0;
        while (flagEnd!=YES) {
            [self arrayRemoveString:arrayObject atString:@"" andAtString:@"" andAtStringDel3:@"" andFlag:&flagEnd];
        }
    }




    j = 0;
    for(NSMutableArray*array in arrayMain){
        for(int i=0;i<array.count-1;i++){
            if([array[i]  isEqual: @""]){
                while ([array[i]  isEqual: @""]) {
                    i++;
                }
            }
            NSMutableString*string = [NSMutableString stringWithString:array[i]];
            NSUInteger count = string.length;
            unichar cc = [string characterAtIndex:count-1];
            NSString*str = [NSString stringWithCharacters:&cc length:1];
            int ch = [string characterAtIndex:0];


            if([str isEqualToString:@"-"] && ![array[i+1] integerValue]){

                int n = [array[i+1] characterAtIndex:0];
                int k = [array[i] characterAtIndex:0];

                if(k>64 && k<123 && n>64 && n<123 && n!=91){
                   // NSLog(@" ======================  dont value: j=  %d i= %d  string =  %@     %@     ",j,i,string,array[i+1]);

                    if(! ( [string isEqualToString:@"back-"] || [ string isEqualToString:@"dilly-"] ||
                          [ string isEqualToString:@"up-to-"] || [ string isEqualToString:@"self-"]||
                          [ string isEqualToString:@"right-"] || [ string isEqualToString:@"off-"]||
                          [ string isEqualToString:@"one-"]) ){
                               //NSLog(@" ======================  dont value: j=  %d i= %d  string =  %@     %@     ",j,i,string,array[i+1]);
                            [string replaceCharactersInRange:NSMakeRange(count-1, 1) withString:array[i+1]];
                            array[i] = string;
                            array[i+1] = @"";
                    }
                }
            }
        }
        j++;
    }

    for(NSMutableArray*arrayObject in arrayMain){
        NSInteger flagEnd=0;
        while (flagEnd!=YES) {
            [self arrayRemoveString:arrayObject atString:@"" andAtString:@"" andAtStringDel3:@"" andFlag:&flagEnd];
        }
    }



/*
    for(NSMutableArray*array in arrayMain){
        for(int i=0;i<array.count-1;i++){
            NSMutableString*string = [NSMutableString stringWithString:array[i]];
           // NSLog(@"i  = %d  string = %@",i,string);
            if([string integerValue]>=12 && [string integerValue]<799){
                if(array.count>i+3 && i>2)
                    NSLog(@"%@ %@ %@   %@   %@ %@ %@",array[i-3],array[i-2],array[i-1],string,array[i+1],array[i+2],array[i+3]);
                else
                    NSLog(@" %@   %@",array[i-1],string);

            }
        }
    }

*/


    for(NSMutableArray*arrayObject in arrayMain){
        NSInteger flagEnd=0;
        while (flagEnd!=YES) {
            [self arrayRemoveString:arrayObject atString:@" " andAtString:@"" andAtStringDel3:@"[" andFlag:&flagEnd];
        }
    }




    for(int k=0;k<arrayMain.count;k++){
        //NSLog(@"k=%d",k);
        NSMutableArray*array = [NSMutableArray arrayWithArray: arrayMain[k]];
        NSMutableString*string;
        for(int i=0;i<array.count;i++){
                                //NSLog(@"i=%d",i);
                                string = [NSMutableString stringWithString:array[i]];
                                BOOL checOpen = 0;
                                BOOL checClosed = 0;
                                for(int a=0;a<string.length;a++){
                                    unichar c1 = [string characterAtIndex:a];
                                    NSString*str = [NSString stringWithCharacters:&c1 length:1];
                                    checOpen = ([str isEqualToString:@"("]) ? !checOpen : checOpen;
                                    checClosed = ([str isEqualToString:@")"]) ? !checClosed : checClosed;
                                 }
            if(checOpen!=checClosed){
                    NSString*str1;
                    for( int j=i+1;j<array.count;j++){
                        BOOL b=0;
                        NSString*string1=array[j];
                        for(int a=(int)string1.length-1;a>=0;a--){
                                    unichar c1 = [string1 characterAtIndex:a];
                                    str1 = [NSString stringWithCharacters:&c1 length:1];
                                    if([str1 isEqualToString:@")"]){
                                        NSMutableString*string2 = [NSMutableString stringWithString:array[j]];
                                        array[j] = @" ";
                                        arrayMain[k][j]=@" ";
                                        [string appendFormat:@" %@",string2];
                                        arrayMain[k][i]=string;
                                        array[i] = string;
                                        b=1;
                                        break;
                                    }
                        }
                        if(b) break;
                        NSMutableString*string2 = [NSMutableString stringWithString:array[j]];
                        array[j] = @" ";
                        arrayMain[k][j]=@" ";
                        [string appendFormat:@" %@",string2];
                        arrayMain[k][i]=string;
                        array[i] = string;
                }
        }
    }
 }

    for(NSMutableArray*arrayObject in arrayMain){
        NSInteger flagEnd=0;
        while (flagEnd!=YES) {
            [self arrayRemoveString:arrayObject atString:@" " andAtString:@"" andAtStringDel3:@"[" andFlag:&flagEnd];
        }
    }

    for(int k=0;k<arrayMain.count;k++){
            //NSLog(@"k=%d",k);
        NSMutableArray*array = [NSMutableArray arrayWithArray: arrayMain[k]];
        NSMutableString*string;
        for(int i=0;i<array.count;i++){
                //NSLog(@"i=%d",i);
            string = [NSMutableString stringWithString:array[i]];
            BOOL checOpen = 0;
            BOOL checClosed = 0;
            for(int a=0;a<string.length;a++){
                unichar c1 = [string characterAtIndex:a];
                NSString*str = [NSString stringWithCharacters:&c1 length:1];
                checOpen = ([str isEqualToString:@"["]) ? !checOpen : checOpen;
                checClosed = ([str isEqualToString:@"]"]) ? !checClosed : checClosed;
            }
            if(checOpen!=checClosed){
                NSString*str1;
                for( int j=i+1;j<array.count;j++){
                    BOOL b=0;
                    NSString*string1=array[j];
                    for(int a=(int)string1.length-1;a>=0;a--){
                        unichar c1 = [string1 characterAtIndex:a];
                        str1 = [NSString stringWithCharacters:&c1 length:1];
                        if([str1 isEqualToString:@"]"]){
                            NSMutableString*string2 = [NSMutableString stringWithString:array[j]];
                            array[j] = @" ";
                            arrayMain[k][j]=@" ";
                            [string appendFormat:@" %@",string2];
                            arrayMain[k][i]=string;
                            array[i] = string;
                            b=1;
                            break;
                        }
                    }
                    if(b) break;
                    NSMutableString*string2 = [NSMutableString stringWithString:array[j]];
                    array[j] = @" ";
                    arrayMain[k][j]=@" ";
                    [string appendFormat:@" %@",string2];
                    arrayMain[k][i]=string;
                    array[i] = string;
                }
            }
        }
    }

    for(NSMutableArray*arrayObject1 in arrayMain){
        NSInteger flagEnd=0;
        while (flagEnd!=YES) {
            [self arrayRemoveString:arrayObject1 atString:@" " andAtString:@"" andAtStringDel3:@"[" andFlag:&flagEnd];
        }
    }

    NSMutableArray*a = [NSMutableArray arrayWithArray:arrayMain[1]];
    [a insertObject:arrayMain[0][0] atIndex:0];
    [a insertObject:arrayMain[0][1] atIndex:1];
    [a insertObject:arrayMain[0][2] atIndex:2];

    arrayMain[1] = [NSArray arrayWithArray:a];
    [arrayMain removeObjectAtIndex:0];

    NSMutableString*stringMain = [[NSMutableString alloc]init];
    for(NSMutableArray*arrayObject2 in arrayMain){
        [stringMain appendFormat:@"obj$"];
        for(NSString*string in arrayObject2){
            [stringMain appendFormat:@"##%@",string];
        }
    }

    self.ollStringEnd = stringMain;

    //NSLog(@"string=%@",self.ollStringEnd);



    NSString *fileName = @"savedStringEnding.txt";
    NSString *path = [@"/Users/ryavkinto/Documents/Objective C/1" stringByAppendingPathComponent:fileName];
    [[NSFileManager defaultManager] createFileAtPath:path contents:nil attributes:nil];
    NSError*error = nil;
    [stringMain writeToFile:path atomically:YES encoding: NSUnicodeStringEncoding error:&error];
    if(error!=nil)
        NSLog(@"error :%@",[error description]);


    NSError *error1;
   // NSMutableData *data = [[NSJSONSerialization dataWithJSONObject:arrayMain
                                                               //options:0 // Pass 0 if you don't care about the readability of the generated string
                                                                // error:&error1] copy];

    NSData *data = [NSPropertyListSerialization dataWithPropertyList:arrayMain format:NSPropertyListXMLFormat_v1_0 options:0 error:&error1];
        //dataWithPropertyList:array format:NSPropertyListBinaryFormat_v1_0 options:0 error1:nil];


    NSString *fileNameData = @"savedStringEndingData.txt";
    NSString *pathData = [@"/Users/ryavkinto/Documents/Objective C/1" stringByAppendingPathComponent:fileNameData];
    [[NSFileManager defaultManager] createFileAtPath:pathData contents:nil attributes:nil];
    NSError*errorData = nil;
    [data writeToFile:pathData atomically:YES];
    if(errorData!=nil)
        NSLog(@"error :%@",[error1 description]);




    [self printArray:arrayMain];

}


-(void)printArray:(NSArray*)arrayMain{
    int i = 0;
    for(NSArray*array in arrayMain){
        NSLog(@"-----------------------object %d",i);
        i++;
        for(NSString*str in array){
            if([str isEqualToString:@" "])
                NSLog(@"------------------------------- ");
            else
                NSLog(@"-----%@",str);
        }
    }
}


@end
