reading = brick.TouchPressed(3);
reading = brick.UltrasonicDist(4);
brick.SetColorMode(1, 2);

x = 1;
global key;
InitKeyboard();
while 1

    brick.MoveMotor('A', -53.5);
    brick.MoveMotor('D', -52.5);
    color = brick.ColorCode(1);
    display(color);
    touch1 = brick.TouchPressed(3);
    distance = brick.UltrasonicDist(4);
      display(distance);

            while distance > 50 && distance < 100
                pause(0.25);
                brick.MoveMotor('A', -53.5);
                brick.MoveMotor('D', -50);
                 pause(0.60);
                
              
                brick.StopAllMotors('Coast');
                brick.MoveMotor('A', 47);
                brick.MoveMotor('D', -43);
                pause(.72);
                brick.StopMotor('A');
                brick.StopMotor('D');
                brick.MoveMotor('A', -40);
                brick.MoveMotor('D', -44);
                pause(1.10);

                break;
            end



    if touch1
        distance = brick.UltrasonicDist(4);
        display(distance);
        
        brick.StopAllMotors('Coast');
        brick.MoveMotor('A', 51);
        brick.MoveMotor('D', 54);
        pause(.67);
        brick.StopMotor('A');
        brick.StopMotor('D');
        
        brick.MoveMotor('A', -47);
        brick.MoveMotor('D', 46);
        pause(.66);
        brick.StopMotor('A');
        brick.StopMotor('D');
       


        end
    

    switch color

        case 5
            brick.StopAllMotors('Coast');
            pause(1);
            brick.MoveMotor('A', -53.5);
            brick.MoveMotor('D', -53);
            pause(1.5);
            

        case 2
            brick.StopAllMotors('Coast');
            pause(1);
            for i =1:2
                brick.beep();
                pause(0.5);
          
                while x==1
                    pause(0.1);

                    switch key
                        case 'uparrow'
                            disp('Up Arrow Pressed!');

                            brick.MoveMotor('A', -50);
                            brick.MoveMotor('D', -60);
                            pause(.15);
                            brick.StopAllMotors('Coast');

                        case 'downarrow'
                            disp('Down Arrow Pressed!');
                            brick.MoveMotor('A', 50);
                            brick.MoveMotor('D', 62);
                            pause(.15);
                            brick.StopAllMotors('Coast');


                        case 'leftarrow'
                            disp('Left Arrow Pressed!');
                            brick.MoveMotor('A', 45);
                            brick.MoveMotor('D', -40);
                            pause(.10);
                            brick.StopAllMotors('Coast');


                        case 'rightarrow'
                            disp('Right Arrow Pressed!');
                            brick.MoveMotor('A', -40);
                            brick.MoveMotor('D', 40);
                            pause(.10);
                            brick.StopAllMotors('Coast');

                        case 0
                            disp('No Key Pressed!');

                        case 'q'
                            brick.StopAllMotors('Coast');
                            x = x-1;

                        case 'o'
                            brick.MoveMotor('C', -20);
                            pause(0.15);
                            brick.MoveMotor('C', 0);
                        case 'p'
                            brick.MoveMotor('C', 20);
                            pause(0.15);
                            brick.MoveMotor('C', 0);
                        case 0
                            disp('No Key Pressed!');
                            break;
                    end


                end



            end
            brick.MoveMotor('A', -53.5);
            brick.MoveMotor('D', -53);
        
        case 3
            brick.StopAllMotors('Coast');
            pause(1);
            for i = 1:3
                brick.beep();
                pause(0.5);
            end
            brick.StopAllMotors('Coast');
            pause(5);
            brick.MoveMotor('A', -40);
            brick.MoveMotor('D', -40);
            pause(1.75);
        case 4
            brick.StopAllMotors('Coast');
            pause(1);
            x= x +1;
            for i = 1:4
                brick.beep();
                pause(0.5);
                
            end
            while x==1
                pause(0.1);

                switch key
                    case 'uparrow'
                        disp('Up Arrow Pressed!');

                        brick.MoveMotor('A', -50);
                        brick.MoveMotor('D', -60);
                        pause(.10);
                        brick.StopAllMotors('Coast');

                    case 'downarrow'
                        disp('Down Arrow Pressed!');
                        brick.MoveMotor('A', 50);
                        brick.MoveMotor('D', 62);
                        pause(.10);
                        brick.StopAllMotors('Coast');


                    case 'leftarrow'
                        disp('Left Arrow Pressed!');
                        brick.MoveMotor('A', 43);
                        brick.MoveMotor('D', -40);
                        pause(.10);
                        brick.StopAllMotors('Coast');


                    case 'rightarrow'
                        disp('Right Arrow Pressed!');
                        brick.MoveMotor('A', -40);
                        brick.MoveMotor('D', 42);
                        pause(.10);
                        brick.StopAllMotors('Coast');

                    case 0
                        disp('No Key Pressed!');

                    case 'q'
                        brick.StopAllMotors('Coast');
                        x = x+1;
                        brick.MoveMotor('A', -53.5);
                        brick.MoveMotor('D', -53);
                        pause(4);
                        

                    case 'o'
                        brick.MoveMotor('C', -20);
                        pause(0.05);
                        brick.MoveMotor('C', 0);
                    case 'p'
                        brick.MoveMotor('C', 20);
                        pause(0.05);
                        brick.MoveMotor('C', 0);
                    case 0
                        disp('No Key Pressed!');
                        break;
                end


            end
    



       



    end
end



CloseKeyboard();