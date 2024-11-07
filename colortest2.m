brick.SetColorMode(1, 2);
while 1
   brick.MoveMotor('A', -40);
   brick.MoveMotor('D', -41.3);
   color = brick.ColorCode(1);
   display(color);
   

    switch color
        case 5
            brick.StopAllMotors('Coast');   
            pause(1);
            brick.MoveMotor('A', -40);
            brick.MoveMotor('D', -40);
            pause(1.75);
            brick.MoveMotor('A', -40);
            brick.MoveMotor('D', -41.3);

        case 2 
           brick.StopAllMotors('Coast');   
            pause(1);
            for i =1:2
                brick.beep();
                pause(0.5);
                
            end
             brick.MoveMotor('A', -40);
            brick.MoveMotor('D', -40);
            pause(1.75);
            brick.MoveMotor('A', -40);
            brick.MoveMotor('D', -41.3);
        case 3
           brick.StopAllMotors('Coast');   
            pause(1);
            for i = 1:3
                 brick.beep();
                pause(0.5);
            end
           brick.StopAllMotors('Coast');  
            brick.MoveMotor('A', -40);
            brick.MoveMotor('D', -40);
            pause(1.75);
        case 4
            brick.StopAllMotors('Coast');   
            pause(1);
            for i = 1:4
                brick.beep();
                pause(0.5);
            end
            brick.MoveMotor('A', -40);
            brick.MoveMotor('D', -40);
            pause(1.75);
            brick.MoveMotor('A', -40);
            brick.MoveMotor('D', -41.3);

    end
end