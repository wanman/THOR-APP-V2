//
//  DJIGSButtonViewController.m
//

#import "DJIGSButtonViewController.h"

@implementation DJIGSButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initButtonUI];
    
    [self setMode:DJIGSViewMode_ViewMode];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)initButtonUI
{
    self.myColorGreen = [UIColor colorWithRed:104/255.0 green:175/255.0 blue:97/255.0 alpha:1.0];
    
    self.editBtn.backgroundColor = self.myColorGreen;
    [self.editBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    self.focusMapBtn.backgroundColor = self.myColorGreen;
    [self.focusMapBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    self.backBtn.backgroundColor = self.myColorGreen;
    [self.backBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    self.addBtn.backgroundColor = self.myColorGreen;
    [self.addBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    self.clearBtn.backgroundColor = self.myColorGreen;
    [self.clearBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    self.configBtn.backgroundColor = self.myColorGreen;
    [self.configBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    self.startBtn.backgroundColor = self.myColorGreen;
    [self.startBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    self.stopBtn.backgroundColor = self.myColorGreen;
    [self.stopBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    //self.compassBtn.backgroundColor = self.myColorGreen;
    //[self.compassBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
}

#pragma mark - Property Method

- (void)setMode:(DJIGSViewMode)mode
{
    _mode = mode;
    //[_compassBtn setHidden:(mode == DJIGSViewMode_EditMode)];
    [_editBtn setHidden:(mode == DJIGSViewMode_EditMode)];
    [_focusMapBtn setHidden:(mode == DJIGSViewMode_EditMode)];
    [_backBtn setHidden:(mode == DJIGSViewMode_ViewMode)];
    [_clearBtn setHidden:(mode == DJIGSViewMode_ViewMode)];
    [_startBtn setHidden:(mode == DJIGSViewMode_ViewMode)];
    [_stopBtn setHidden:(mode == DJIGSViewMode_ViewMode)];
    [_addBtn setHidden:(mode == DJIGSViewMode_ViewMode)];
    [_configBtn setHidden:(mode == DJIGSViewMode_ViewMode)];
}

#pragma mark - IBAction Methods

/*
- (IBAction)compassAction:(id)sender {
    if([_delegate respondsToSelector:@selector(compassBtnActionInGSButtonVC:)]) {
        [_delegate compassBtnActionInGSButtonVC:self];
    }
}
 */

- (IBAction)backBtnAction:(id)sender {
    [self setMode:DJIGSViewMode_ViewMode];
    if ([_delegate respondsToSelector:@selector(switchToMode:inGSButtonVC:)]) {
        [_delegate switchToMode:self.mode inGSButtonVC:self];
    }
}

- (IBAction)stopBtnAction:(id)sender {
    if ([_delegate respondsToSelector:@selector(stopBtnActionInGSButtonVC:)]) {
        [_delegate stopBtnActionInGSButtonVC:self];
    }
    
}

- (IBAction)clearBtnAction:(id)sender {
    
    if ([_delegate respondsToSelector:@selector(clearBtnActionInGSButtonVC:)]) {
        [_delegate clearBtnActionInGSButtonVC:self];
    }
    
}

- (IBAction)focusMapBtnAction:(id)sender {
    
    if ([_delegate respondsToSelector:@selector(focusMapBtnActionInGSButtonVC:)]) {
        [_delegate focusMapBtnActionInGSButtonVC:self];
    }
}

- (IBAction)editBtnAction:(id)sender {
    
    [self setMode:DJIGSViewMode_EditMode];
    if ([_delegate respondsToSelector:@selector(switchToMode:inGSButtonVC:)]) {
        [_delegate switchToMode:self.mode inGSButtonVC:self];
    }
    
}

- (IBAction)startBtnAction:(id)sender {
    
    if ([_delegate respondsToSelector:@selector(startBtnActionInGSButtonVC:)]) {
        [_delegate startBtnActionInGSButtonVC:self];
    }
}

- (IBAction)addBtnAction:(id)sender {
    
    if ([_delegate respondsToSelector:@selector(addBtn:withActionInGSButtonVC:)]) {
        [_delegate addBtn:self.addBtn withActionInGSButtonVC:self];
    }
    
}

- (IBAction)configBtnAction:(id)sender {
    
    if ([_delegate respondsToSelector:@selector(configBtnActionInGSButtonVC:)]) {
        [_delegate configBtnActionInGSButtonVC:self];
    }
}

@end