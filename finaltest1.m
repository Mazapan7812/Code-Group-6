reading = brick.TouchPressed(3);
brick.SetColorMode(1, 2);

x = 0;
global key;
InitKeyboard();
while 1

    brick.MoveMotor('A', -50);
    brick.MoveMotor('D', -53);
    color = brick.ColorCode(1);
    display(color);
    touch1 = brick.TouchPressed(3); % Read a touch sensor connected to port 1.
    distance = brick.UltrasonicDist(4);


    if touch1
        distance = brick.UltrasonicDist(4);
        display(distance);
        brick.StopAllMotors('Coast');     % Beep if the sensor was touched.
        brick.MoveMotor('A', 50);
        brick.MoveMotor('D', 53);
        pause(1);
        brick.StopMotor('A');
        brick.StopMotor('D');
        if distance > 30
            brick.MoveMotor('A', -40);
            brick.MoveMotor('D', 40);
            pause(.75);
            brick.StopMotor('A');
            brick.StopMotor('D');
        else
            brick.MoveMotor('A', 40);
            brick.MoveMotor('D', -40);
            pause(.75);
            brick.StopMotor('A');
            brick.StopMotor('D');


        end % End program

    end

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
            while x<1
                pause(0.1);

                switch key
                    case 'uparrow'
                        disp('Up Arrow Pressed!');

                        brick.MoveMotor('A', -50);
                        brick.MoveMotor('D', -56);
                        pause(.15);
                        brick.StopAllMotors('Coast');

                    case 'downarrow'
                        disp('Down Arrow Pressed!');
                        brick.MoveMotor('A', 50);
                        brick.MoveMotor('D', 53);
                        pause(.15);
                        brick.StopAllMotors('Coast');


                    case 'leftarrow'
                        disp('Left Arrow Pressed!');
                        brick.MoveMotor('A', 40);
                        brick.MoveMotor('D', -40);
                        pause(.15);
                        brick.StopAllMotors('Coast');


                    case 'rightarrow'
                        disp('Right Arrow Pressed!');
                        brick.MoveMotor('A', -40);
                        brick.MoveMotor('D', 40);
                        pause(.15);
                        brick.StopAllMotors('Coast');

                    case 0
                        disp('No Key Pressed!');

                    case 'q'
                        brick.StopAllMotors('Coast');
                        x = x+1;

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





            while distance > 50 && distance < 250
                pause(0.25);
                brick.MoveMotor('A', -40);
                brick.MoveMotor('D', -41.3);
                pause(.50);
                brick.StopAllMotors('Coast');     % Beep if the sensor was touched.
                brick.MoveMotor('A', -40);
                brick.MoveMotor('D', 38);
                pause(.70);
                brick.StopMotor('A');
                brick.StopMotor('D');
                brick.MoveMotor('A', -40);
                brick.MoveMotor('D', -41.3);
                pause(1.75);

                break;
            end





    end
end



CloseKeyboard();