function plotData(x, y)
%PLOTDATA Plots the data points x and y into a new figure 
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.
% Hint: You can use the 'rx' option with plot to have the markers
%       appear as red crosses. Furthermore, you can make the
%       markers larger by using plot(..., 'rx', 'MarkerSize', 10);

figure; % open a new figure window
plot(x, y, 'rx', 'MarkerSize', 6);
ylabel('Profit in $10,000s');
xlabel('Population of City in 10,000s');
axis([0, 25, -5, 25]) 

% ============================================================

end
