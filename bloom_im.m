      
   f   u   n   c   t   i   o   n       o   u   t   =   d   i   v   i   d   e   _   b   l   o   c   k   _   m   a   p   _   b   l   o   o   m   (   i   n   )      
      
   o   u   t   =   {   }   ;      
      
   f   o   r       p   a   l   m   i   n   d   e   x   =   1   :   1   0   0      
                                   k   e   y       =   l   t   t   t   s   s   s   (   0   .   8   4   8   +   p   a   l   m   i   n   d   e   x   *   0   .   0   0   1   )   ;      
                                   v   a   l   u   e   =   (   i   n   t   2   s   t   r   (   k   e   y   )   )   ;      
                                   v   =   (   (   b   i   n   2   d   e   c   (   v   a   l   u   e   )   )   )   ;      
                                   v   (   v   =   =   0   )   =   1   0   ;      
                                   v   2   =   v   '   ;      
                      
                   f   o   r       p   a   l   m   j   =   1   :   5      
      
      
                                   b   l   o   c   k   _   i   n   d   e   x   =   [   ]   ;      
                                   b   l   o   o   m   _   f   i   l   t   e   r       =       z   e   r   o   s   (   4   0   9   6   ,   1   )   ;      
                                   b   l   o   c   k   _   t   m   p   =   i   n   {   p   a   l   m   i   n   d   e   x   ,   p   a   l   m   j   }   ;      
                                   b   l   o   c   k   _   t   m   p   =   r   e   s   h   a   p   e   (   b   l   o   c   k   _   t   m   p   '   ,   1   ,   [   ]   )   ;      
                                       b   l   o   c   k   _   t   m   p   =       b   l   o   c   k   _   t   m   p   (   :   )   ;      
                                       b   l   o   c   k   _   t   m   p   =   r   e   s   h   a   p   e   (   b   l   o   c   k   _   t   m   p   ,   [   8   ,   1   2   8   ]   )   ;      
                                       f   o   r       k   =   1   :   7   0      
                                                       t   m   p   =   b   i   n   2   d   e   c   (   i   n   t   2   s   t   r   (   b   l   o   c   k   _   t   m   p   (   :   ,   k   )   '   )   )   ;      
                                                       t   m   p   (   t   m   p   =   =   0   )   =   2   4   9   ;      
                                                       t   m   p   =   v   2   (   t   m   p   )   ;      
                                                   %       b   l   o   o   m   _   f   i   l   t   e   r   (   t   m   p   )   =   1   ;      
                                                       i   f       b   l   o   o   m   _   f   i   l   t   e   r   (   t   m   p   )   =   =   0      
                                                                       b   l   o   o   m   _   f   i   l   t   e   r   (   t   m   p   )   =   1   ;      
                                                       e   l   s   e      
                                                                       w   h   i   l   e       (   b   l   o   o   m   _   f   i   l   t   e   r   (   t   m   p   =   =   1   )   )      
                                                                                       t   =   t   m   p   +   p   a   l   m   i   n   d   e   x   ;      
                                                                                       t   m   p   =   m   o   d   (   t   ,   1   0   )   ;      
                                                                       e   n   d      
                                                                       b   l   o   o   m   _   f   i   l   t   e   r   (   t   m   p   +   1   )   =   1   ;      
                                                       e   n   d      
                                       e   n   d      
                              
                           b   l   o   o   m   _   f   i   l   t   e   r   =   r   e   s   h   a   p   e   (   b   l   o   o   m   _   f   i   l   t   e   r   ,   [   2   5   6   ,   1   6   ]   )   ;      
                           o   u   t   {   p   a   l   m   i   n   d   e   x   ,   p   a   l   m   j   }   =   b   l   o   o   m   _   f   i   l   t   e   r   ;      
                           %       s   u   m   (   s   u   m   (   b   l   o   o   m   _   f   i   l   t   e   r   )   )   /   (   1   2   8   )      
                   e   n   d      
   e   n   d      
   %   {      
   f   u   n   c   t   i   o   n       o   u   t   =   d   i   v   i   d   e   _   b   l   o   c   k   _   m   a   p   _   b   l   o   o   m   (   i   n   )      
          
   o   u   t   =   {   }   ;      
   f   o   r       p   a   l   m   i   n   d   e   x   =   1   :   1   0   0      
                   f   o   r       p   a   l   m   j   =   1   :   5      
                                   b   l   o   c   k   _   i   n   d   e   x   =   [   ]   ;      
                                   b   l   o   o   m   _   f   i   l   t   e   r       =       z   e   r   o   s   (   2   5   6   ,   1   6   )   ;      
                                   b   l   o   c   k   _   t   m   p   =   i   n   {   p   a   l   m   i   n   d   e   x   ,   p   a   l   m   j   }   ;      
                                   f   o   r       i   =   1   :   4      
                                           f   o   r       j   =   1   :   4      
                                                   b   l   o   c   k   _   i   n   d   e   x   =   b   l   o   c   k   _   t   m   p   (   (   i   -   1   )   *   8   +   1   :   i   *   8   ,   (   j   -   1   )   *   8   +   1   :   j   *   8   )   ;      
                                                   %  k�  WW  g	   8  N*   b   l   o   o   m  n�  l�  Vh      
                                                       f   o   r       k   =   1   :   4      
                                                                   t   m   p   =   b   i   n   2   d   e   c   (   i   n   t   2   s   t   r   (       b   l   o   c   k   _   i   n   d   e   x   (   :   ,   k   )   '   )   )   ;              
                                                                   i   f       b   l   o   o   m   _   f   i   l   t   e   r   (   t   m   p   +   1   ,   (   i   -   1   )   *   4   +   j   )   =   =   0      
                                                                           b   l   o   o   m   _   f   i   l   t   e   r   (   t   m   p   +   1   ,   (   i   -   1   )   *   4   +   j   )   =   1   ;      
                                                                          
                                                                   e   l   s   e      
                                                                                   w   h   i   l   e   (   b   l   o   o   m   _   f   i   l   t   e   r   (   t   m   p   +   1   ,   (   i   -   1   )   *   4   +   j   )   =   =   1   )      
                                                                                                   t   m   p   =   t   m   p   +   1   ;      
                                                                                                   t   m   p   =   m   o   d   (   t   m   p   ,   1   2   8   )   ;      
                                                                                   e   n   d      
                                                                                   b   l   o   o   m   _   f   i   l   t   e   r   (   t   m   p   +   1   ,   (   i   -   1   )   *   4   +   j   )   =   1   ;      
                                                                   e   n   d      
              
                                                       e   n   d      
                                           e   n   d      
                               e   n   d      
                                  
                           o   u   t   {   p   a   l   m   i   n   d   e   x   ,   p   a   l   m   j   }   =   b   l   o   o   m   _   f   i   l   t   e   r   ;          
                   e   n   d      
   e   n   d                  
      
      
      
      
      
   f   u   n   c   t   i   o   n       o   u   t   =   d   i   v   i   d   e   _   b   l   o   c   k   _   m   a   p   _   b   l   o   o   m   (   i   n   )      
          
   o   u   t   =   {   }   ;      
   f   o   r       p   a   l   m   i   n   d   e   x   =   1   :   1   0   0      
                   f   o   r       p   a   l   m   j   =   1   :   5      
                                   b   l   o   c   k   _   i   n   d   e   x   =   [   ]   ;      
                                   b   l   o   o   m   _   f   i   l   t   e   r       =       z   e   r   o   s   (   2   5   6   ,   1   6   )   ;      
                                   b   l   o   o   m   _   f   i   l   t   e   r   =   b   l   o   o   m   _   f   i   l   t   e   r   (   :   )   ;      
                                   b   l   o   c   k   _   t   m   p   =   i   n   {   p   a   l   m   i   n   d   e   x   ,   p   a   l   m   j   }      
                                   f   o   r       i   =   1   :   4      
                                           f   o   r       j   =   1   :   4      
                                                   b   l   o   c   k   _   i   n   d   e   x   =   b   l   o   c   k   _   t   m   p   (   (   i   -   1   )   *   8   +   1   :   i   *   8   ,   (   j   -   1   )   *   8   +   1   :   j   *   8   )      
                                                   %  k�  WW  g	   8  N*   b   l   o   o   m  n�  l�  Vh      
                                                       f   o   r       k   =   1   :   8      
                                                                   t   m   p   =   b   i   n   2   d   e   c   (   i   n   t   2   s   t   r   (       b   l   o   c   k   _   i   n   d   e   x   (   :   ,   k   )   '   )   )              
                                                               %       i   f       b   l   o   o   m   _   f   i   l   t   e   r   (   t   m   p   +   1   ,   (   i   -   1   )   *   4   +   j   )   =   =   0      
                                                                           b   l   o   o   m   _   f   i   l   t   e   r   (   t   m   p   +   1   )   =   1   ;      
                                                                  
              
                                                       e   n   d      
                                           e   n   d      
                               e   n   d      
                                  
                           o   u   t   {   p   a   l   m   i   n   d   e   x   ,   p   a   l   m   j   }   =   b   l   o   o   m   _   f   i   l   t   e   r   ;          
                   e   n   d      
   e   n   d                  
      
   %   }    