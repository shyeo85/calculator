//
//  ViewController.m
//  Calculator
//
//  Created by user on 2016. 8. 24..
//  Copyright © 2016년 LDCC. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

enum opr {none, plus, minus, divide, multiply};
typedef enum opr Operator;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (nonatomic) int number;

@end

@implementation ViewController
{
    int currentValue;
    Operator currentOpr;
    Calculator *calc;
}
- (IBAction)clickEqual:(id)sender {
    switch (currentOpr) {
        case plus:
            [calc add: currentValue];
            currentValue = [calc accumulator];
            break;
        case minus:
            [calc subtract: currentValue];
            currentValue = [calc accumulator];
            break;
        case multiply:
            [calc multiply: currentValue];
            currentValue = [calc accumulator];
            break;
        case divide:
            [calc divide: currentValue];
            currentValue = [calc accumulator];
            break;
        default:
            break;
    }
    
}
- (IBAction)clickOpr:(id)sender {
    //타입변환
    UIButton *btn = (UIButton *) sender;
    
    int value = (int) btn.tag;
    
    switch (value) {
        case 1:
            currentOpr = plus;
            break;
        case 2:
            currentOpr = minus;
            break;
        case 3:
            currentOpr = multiply;
            break;
        case 4:
            currentOpr = divide;
            break;
        default:
            break;
    }
    
    [calc setAccumulator : currentValue];
    currentValue = 0;
    self.myLabel.text = [NSString stringWithFormat:@"%d", currentValue];
}

- (IBAction)buttonClicked:(id)sender {  //지우거나 이름을 변경할때는 스토리보드확인필요
//    NSLog(@"ButtonClicked");
    
    
    
    //타입변환
    UIButton *btn = (UIButton *) sender;
    
    int value = (int) btn.tag;
    

    
    if (currentOpr == none){
        currentValue = currentValue * 10 + value;
    } else {
        currentValue = value;
    }
    self.myLabel.text = [NSString stringWithFormat:@"%d", currentValue];
    
    
//    if(0<=value && value<=9){
//        if( self.number != 0 ){
//            self.number = self.number *10 + value;
//        }else{
//            self.number = self.number *10 ;
//        }
////        NSString str = (NSString) self.number;
//        NSLog([NSString stringWithFormat:@"%d", self.number]);
//           self.myLabel.text = [NSString stringWithFormat:@"%d", self.number];
//      
//    }
    
 
    
}
- (IBAction)clear:(id)sender {
    currentValue = 0;
    self.myLabel.text = [NSString stringWithFormat:@"%d", currentValue];
}

- (IBAction)unwind:(UIStoryboardSegue *)sender{
    
}

- (void)viewDidLoad {  //뷰를 만들고 나서 실행되는 코드 초기화 메소드는 아니지만 여기 부터 시작
    [super viewDidLoad];
    currentValue = 0;
    currentOpr = 0;  //=none
    calc = [[Calculator alloc] init];
    self.number =0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
