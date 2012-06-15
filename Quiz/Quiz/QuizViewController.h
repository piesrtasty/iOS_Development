//
//  QuizViewController.h
//  Quiz
//
//  Created by idontgiveafuck on 4/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
{
  int currentQuestionIndex;

  // The model objects
  NSMutableArray *questions;
  NSMutableArray *answers;

  // The view objects - don't worry about IBOutlet -
  // we'll talk about it shortly
  IBOutlet UILabel *questionField;
  IBOutlet UILabel *answerField;
}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
