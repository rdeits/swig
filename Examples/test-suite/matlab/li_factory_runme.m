import li_factory.*

circle = Geometry_create(Geometry.CIRCLE);
r = circle.radius();
if (r ~= 1.5)
  error
end

point = Geometry_create(Geometry.POINT);
w = point.width();
if (w ~= 1.0)
  error
end
