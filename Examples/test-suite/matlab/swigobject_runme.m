import swigobject.*

a = A();

a1 = a_ptr(a);
a2 = a_ptr(a);

if (swig_this(a1) ~= swig_this(a2))
  error
end
  

lthis = uint64(swig_this(a.this));
xstr1 = printf('0x%x',lthis);
xstr2 = pointer_str(a);

if (xstr1 ~= xstr2)
  error
end

s = str(a.this);
r = repr(a.this);

v1 = v_ptr(a);
v2 = v_ptr(a);
if (uint64(v1) ~= uint64(v2))
  error
end
