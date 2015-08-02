Sierpinski.m is a matlab function that creates Sierpinski carpets of various orders.
It begins with a 3x3 array of ones and the center element is zeroed. The kronecker
tensor product is then used to create Sierpinski carpets of higher orders.

By fractal orders > 7, the computer slows down quite a bit due to the large size of 
the matrix.

reconFun.m is a matlab function that reconstructs divides an array into smaller 
subsections and takes the average of the elements in the subsections.

Both functions were created on Matlab 2011 on a PC running windows 7