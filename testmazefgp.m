
reading = brick.TouchPressed(3);


while 1

    touch1 = brick.TouchPressed(3); % Read a touch sensor connected to port 1.
  distance = brick.UltrasonicDist(4);
brick.MoveMotor('A', -40);
brick.MoveMotor('D', -41.3);
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

    if touch1
distance = brick.UltrasonicDist(4);
display(distance);
 brick.StopAllMotors('Coast');     % Beep if the sensor was touched.
 brick.MoveMotor('A', 40);
brick.MoveMotor('D', 40);
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
    
    

end