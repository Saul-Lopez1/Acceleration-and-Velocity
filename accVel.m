% Acceleration and Velocity

% Acceleration function handle
a = @(t) 7*t.*sin(5*t);

% Use a time forloop to find array of velocities
count = 1;

for t = 0:0.02:10
    v(count) = integral(a,0,t);
    count = count + 1;
end

t = 0:0.02:10;
% Plot velocity vs time
plot(t,v);
xlabel('Time');
ylabel('Velocity');
title("Plot of Velocity vs. Time")