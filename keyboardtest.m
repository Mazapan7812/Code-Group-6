global key;

InitKeyboard();

while 1
    pause(0.1);

    switch key
        case 'uparrow'
            disp('Up Arrow Pressed!');
          
         brick.MoveMotor('A', -100);
         brick.MoveMotor('D', -97);
        
        case 'downarrow'
            disp('Down Arrow Pressed!');
            brick.MoveMotor('C', -20);
            pause(0.55);
            brick.MoveMotor('C', 0);
        
        case 'leftarrow'
            disp('Left Arrow Pressed!');
            
        
        case 'rightarrow'
            disp('Right Arrow Pressed!');
        
        case 0
            disp('No Key Pressed!');
        
        case 'q'
            brick.StopAllMotors('Coast');

            break;
    end
end

CloseKeyboard();