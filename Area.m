%% 
% Area of Square
side_length = input('Enter the side length of the square: ');
area_square = side_length^2;
fprintf('The area of the square is: %.2f\n', area_square);

%% 
% Area of Rectangle
length_rectangle = input('Enter the length of the rectangle: ');
width_rectangle = input('Enter the width of the rectangle: ');
area_rectangle = length_rectangle * width_rectangle;
fprintf('The area of the rectangle is: %.2f\n', area_rectangle);

%% 
% Area of Circle
radius_circle = input('Enter the radius of the circle: ');
area_circle = pi * radius_circle^2;
fprintf('The area of the circle is: %.2f\n', area_circle);

%% 
% Area of Parallelogram
base_parallelogram = input('Enter the base length of the parallelogram: ');
height_parallelogram = input('Enter the height of the parallelogram: ');
area_parallelogram = base_parallelogram * height_parallelogram;
fprintf('The area of the parallelogram is: %.2f\n', area_parallelogram);

%% 
% Area of Isosceles Triangle
base_isosceles = input('Enter the base length of the isosceles triangle: ');
height_isosceles = input('Enter the height of the isosceles triangle: ');
area_isosceles = 0.5 * base_isosceles * height_isosceles;
fprintf('The area of the isosceles triangle is: %.2f\n', area_isosceles);

%% 
% Area of Scalene Triangle
a = input('Enter the length of side a of the scalene triangle: ');
b = input('Enter the length of side b of the scalene triangle: ');
c = input('Enter the length of side c of the scalene triangle: ');
s = (a + b + c) / 2;
area_scalene = sqrt(s * (s - a) * (s - b) * (s - c));
fprintf('The area of the scalene triangle is: %.2f\n', area_scalene);

%% 
% Area of Equilateral Triangle
side_equilateral = input('Enter the side length of the equilateral triangle: ');
area_equilateral = (sqrt(3) / 4) * side_equilateral^2;
fprintf('The area of the equilateral triangle is: %.2f\n', area_equilateral);

%% 
% Area of Rhombus
diagonal1_rhombus = input('Enter the length of the first diagonal of the rhombus: ');
diagonal2_rhombus = input('Enter the length of the second diagonal of the rhombus: ');
area_rhombus = 0.5 * diagonal1_rhombus * diagonal2_rhombus;
fprintf('The area of the rhombus is: %.2f\n', area_rhombus);

%% 
% Area of Pentagon
side_pentagon = input('Enter the side length of the pentagon: ');
apothem_pentagon = input('Enter the apothem length of the pentagon: ');
area_pentagon = (5 / 4) * side_pentagon * apothem_pentagon;
fprintf('The area of the pentagon is: %.2f\n', area_pentagon);

%% 
% Area of Hexagon
side_hexagon = input('Enter the side length of the hexagon: ');
area_hexagon = (3 * sqrt(3) / 2) * side_hexagon^2;
fprintf('The area of the hexagon is: %.2f\n', area_hexagon);

%% 
% Area of Ellipse
a_ellipse = input('Enter the length of semi-major axis of the ellipse: ');
b_ellipse = input('Enter the length of semi-minor axis of the ellipse: ');
area_ellipse = pi * a_ellipse * b_ellipse;
fprintf('The area of the ellipse is: %.2f\n', area_ellipse);

%% 
% Area of Trapezoid
a_trapezoid = input('Enter the length of the first base of the trapezoid: ');
b_trapezoid = input('Enter the length of the second base of the trapezoid: ');
height_trapezoid = input('Enter the height of the trapezoid: ');
area_trapezoid = 0.5 * (a_trapezoid + b_trapezoid) * height_trapezoid;
fprintf('The area of the trapezoid is: %.2f\n', area_trapezoid);

%% 
% Area of Kite
d1_kite = input('Enter the length of the first diagonal of the kite: ');
d2_kite = input('Enter the length of the second diagonal of the kite: ');
area_kite = 0.5 * d1_kite * d2_kite;
fprintf('The area of the kite is: %.2f\n', area_kite);

%% 
% Area of Annulus
r1_annulus = input('Enter the outer radius of the annulus: ');
r2_annulus = input('Enter the inner radius of the annulus: ');
area_annulus = pi * (r1_annulus^2 - r2_annulus^2);
fprintf('The area of the annulus is: %.2f\n', area_annulus);

_________________________________________________________________________________________
