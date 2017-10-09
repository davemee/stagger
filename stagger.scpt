JsOsaDAS1.001.00bplist00�Vscripto"# / * 
 
 	 s t a g g e r ,   t h e   s t u p i d   t a g g e r 
 	 
 	 L o o k s   a t   t h e   i t e m   c u r r e n t l y   s e l e c t e d .   L o o k s   a t   y o u r   h i e r a r c h y   o f   f o l d e r s   t h a t   a r e   g r o u p s ,   a n d   f i n d s   t h e   l e a f - n o d e s   o f   t h i s   h i e r a r c h y .   U s e s   a   s l i g h t l y   o p t i m i s i t i c   h e u r i s t i c   t o   f i n d   m a t c h e s . 
 	 
 	 T h i s   i s   v e r y   u s e f u l   i f   y o u   a r e   m a t c h i n g   n a m e s   i n   d o c u m e n t s ,   o r   o r g a n i s a t i o n s ,   o r   C a p i t a l   L e t t e r   t h e m e s .   T h e   t a g   m a t c h   w i l l   o n l y   m a t c h   a g a i n s t   l e a f - n o d e   g r o u p s   t h a t   b e g i n   w i t h   a   C A P I T A L   L E T T E R ,   n u m b e r ,   u n d e r s c o r e 
 
 * / 
 
 / * 
         s t o r e   p r e f e r e n c e s ,   v i a   h t t p s : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 3 5 8 6 1 1 7 9 / o s - x - j a v a s c r i p t - f o r - a u t o m a t i o n - h o w - t o - c r e a t e - a n d - s t o r e - v a r i a b l e - f o r - f u t u r e - u 
 * / 
 / *   
 	 t a g   e x t r a c t i o n   b y   h o u t h a k k e r ,   c o u r t e s y   h t t p : / / f o r u m . d e v o n t e c h n o l o g i e s . c o m / v i e w t o p i c . p h p ? f = 2 0 & t = 2 4 9 0 1   ( t h e   b u l k   o f   t h i s   c o d e ! ) 
 * / 
 / * 
 
 	 t a g   a s s i g n m e n t   b y   h o u t h a k k e r ,   c o u r t e s y   h t t p : / / f o r u m . d e v o n t e c h n o l o g i e s . c o m / v i e w t o p i c . p h p ? f = 2 0 & t = 2 4 9 3 7 & p = 1 2 2 1 8 4 # p 1 2 2 2 0 1 
 
 * / 
 / * 
 
 	 i n   h i n d s i g h t ,   I   j u s t   b e g g e d   a   f e w   p e o p l e   w a y   s m a r t e r   t h a n   I   t o   w r i t e   c o d e   i n   v o o d o o   a n d   I   j u s t   p u t   s o m e   n a � f   r e g e x e s   a n d   h a l f - b a k e d   d e s i g n s   a r o u n d   i t . 
 
 * / 
 
 ( f u n c t i o n   ( )   { 
 / /         ' u s e   s t r i c t ' ; 
 / / 	 v a r   s u   =   A p p l i c a t i o n ( " S y s t e m U I S e r v e r " ) ; 
 / / 	 s u . i n c l u d e S t a n d a r d A d d i t i o n s   =   t r u e ; 
 	 v a r   d t   =   A p p l i c a t i o n ( " D e v o n T h i n k   P r o " ) ; 
 	 d t . i n c l u d e S t a n d a r d A d d i t i o n s   =   t r u e ; 	 
 
         / /   D E V O N T H I N K   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 
         / /   U n i q u e   s e t   o f   a l l   t h e   t a g s   a t t a c h e d   t o   a n y   l e a f   r e c o r d s 
 
         / /   ( L i s t   o f   r e c o r d s   - >   l i s t   o f   s t r i n g s ) 
         / /   d t L e a f T a g s   : :   [ D T   R e c o r d ]   - >   [ S t r i n g ] 
         f u n c t i o n   d t L e a f T a g s ( d t R e c s )   { 
                 r e t u r n   s o r t B y ( c o m p a r i n g ( t o L o w e r ) ,   n u b ( c o n c a t M a p ( f u n c t i o n   ( x )   { 
                         v a r   n e s t   =   x . c h i l d r e n ; 
                         r e t u r n   n e s t . l e n g t h   ! = =   0   ?   d t L e a f T a g s ( n e s t ( ) )   :   x . t a g s ( ) ; 
                 } ,   d t R e c s ) ) ) ; 
         } ; 
 
         / /   c u r r e n t D B L e a f T a g s   : :   ( )   - >   [ S t r i n g ] 
         f u n c t i o n   c u r r e n t D B L e a f T a g s ( )   { 
                 r e t u r n   d t L e a f T a g s ( 
                         A p p l i c a t i o n ( ' D e v o n T h i n k   P r o ' ) 
                         . c u r r e n t D a t a b a s e . r e c o r d s ( ) 
                 ) ; 
         } ; 
 
         / /   G E N E R I C   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 
         / /   a p p e n d   : :   [ a ]   - >   [ a ]   - >   [ a ] 
         f u n c t i o n   a p p e n d ( x s ,   y s )   { 
                 r e t u r n   x s . c o n c a t ( y s ) ; 
         } ; 
 
         / /   c o m p a r i n g   : :   ( a   - >   b )   - >   ( a   - >   a   - >   O r d e r i n g ) 
         f u n c t i o n   c o m p a r i n g ( f )   { 
                 r e t u r n   f u n c t i o n   ( x ,   y )   { 
                         v a r   a   =   f ( x ) , 
                                 b   =   f ( y ) ; 
                         r e t u r n   a   <   b   ?   - 1   :   a   >   b   ?   1   :   0 ; 
                 } ; 
         } ; 
 
         / /   c o n c a t M a p   : :   ( a   - >   [ b ] )   - >   [ a ]   - >   [ b ] 
         f u n c t i o n   c o n c a t M a p ( f ,   x s )   { 
                 r e t u r n   x s . l e n g t h   >   0   ?   f u n c t i o n   ( )   { 
                         v a r   u n i t   =   t y p e o f   x s [ 0 ]   = = =   ' s t r i n g '   ?   ' '   :   [ ] ; 
                         r e t u r n   u n i t . c o n c a t . a p p l y ( u n i t ,   x s . m a p ( f ) ) ; 
                 } ( )   :   [ ] ; 
         } ; 
 
         / /   i s N u l l   : :   [ a ]   |   S t r i n g   - >   B o o l 
         f u n c t i o n   i s N u l l ( x s )   { 
                 r e t u r n   A r r a y . i s A r r a y ( x s )   | |   t y p e o f   x s   = = =   ' s t r i n g '   ?   x s . l e n g t h   <   1   :   u n d e f i n e d ; 
         } ; 
 
         / /   l o g   : :   a   - >   I O   ( ) 
         f u n c t i o n   l o g ( )   { 
                 f o r   ( v a r   _ l e n   =   a r g u m e n t s . l e n g t h ,   a r g s   =   A r r a y ( _ l e n ) ,   _ k e y   =   0 ;   _ k e y   <   _ l e n ;   _ k e y + + )   { 
                         a r g s [ _ k e y ]   =   a r g u m e n t s [ _ k e y ] ; 
                 } 
 
                 r e t u r n   c o n s o l e . l o g ( a r g s . m a p ( J S O N . s t r i n g i f y ) 
                         . j o i n ( '   - >   ' ) ) ; 
         } ; 
 
         / /   n u b   : :   [ a ]   - >   [ a ] 
         f u n c t i o n   n u b ( x s )   { 
                 r e t u r n   n u b B y ( f u n c t i o n   ( a ,   b )   { 
                         r e t u r n   a   = = =   b ; 
                 } ,   x s ) ; 
         } ; 
 
         / /   n u b B y   : :   ( a   - >   a   - >   B o o l )   - >   [ a ]   - >   [ a ] 
         f u n c t i o n   n u b B y ( p ,   x s )   { 
                 v a r   m b x   =   x s . l e n g t h   ?   { 
                         j u s t :   x s [ 0 ] 
                 }   :   { 
                         n o t h i n g :   t r u e 
                 } ; 
                 r e t u r n   m b x . n o t h i n g   ?   [ ]   :   [ m b x . j u s t ] . c o n c a t ( n u b B y ( p ,   x s . s l i c e ( 1 ) 
                         . f i l t e r ( f u n c t i o n   ( y )   { 
                                 r e t u r n   ! p ( m b x . j u s t ,   y ) ; 
                         } ) ) ) ; 
         } ; 
 
         / /   s h o w   : :   I n t   - >   a   - >   I n d e n t e d   S t r i n g 
         / /   s h o w   : :   a   - >   S t r i n g 
         f u n c t i o n   s h o w ( )   { 
                 f o r   ( v a r   _ l e n 2   =   a r g u m e n t s . l e n g t h ,   x   =   A r r a y ( _ l e n 2 ) ,   _ k e y 2   =   0 ;   _ k e y 2   <   _ l e n 2 ;   _ k e y 2 + + )   { 
                         x [ _ k e y 2 ]   =   a r g u m e n t s [ _ k e y 2 ] ; 
                 } 
 
                 r e t u r n   J S O N . s t r i n g i f y . a p p l y ( n u l l ,   x . l e n g t h   >   1   ?   [ x [ 1 ] ,   n u l l ,   x [ 0 ] ]   :   x ) ; 
         } ; 
 
         / /   s o r t B y   : :   ( a   - >   a   - >   O r d e r i n g )   - >   [ a ]   - >   [ a ] 
         f u n c t i o n   s o r t B y ( f ,   x s )   { 
                 r e t u r n   x s . s l i c e ( ) 
                         . s o r t ( f ) ; 
         } ; 
 
         / /   t o L o w e r   : :   T e x t   - >   T e x t 
         f u n c t i o n   t o L o w e r ( s )   { 
                 r e t u r n   s . t o L o w e r C a s e ( ) ; 
         } ; 
 
         / /   S U P P O R T   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 
 	 f u n c t i o n   f i n d M a t c h i n g T a g s ( b o d y T e x t ,   t a g s )   { 
 	 
 	 	 / /   f i n d ,   i n   t h e   t e x t ,   a n y   t a g s 
 	 	 v a r   m a t c h i n g T a g s   =   [ ] ; 
 	 	 / / v a r   b o d y   =   b o d y T e x t . t o L o w e r C a s e ( ) ; 
 	 	 f o r   ( v a r   t a g   i n   t a g s )   { 
 	 	 	 i f (   i s V a l i d T a g (   t a g s [   t a g   ]   )   )   { 
 	 	 	 	 v a r   r e g e x _ s t r i n g   =   ' [ ^ 0 - 9 a - z A - Z \ . ] ' + t a g s [   t a g   ] + ' [ ^ 0 - 9 a - z A - Z \ . ] ' ; 
 	 	 	 	 v a r   r e g e x   =   n e w   R e g E x p (   r e g e x _ s t r i n g ,   ' g i '   ) ; 
 	 	 	 	 v a r   r e s u l t s   =   b o d y T e x t . m a t c h ( r e g e x ) ; 
 	 	 	 	 i f (   r e s u l t s   ! = =   n u l l   )   { 
 	 	 	 	 	 i f ( 	 r e s u l t s . l e n g t h > 0   )   { 
 	 	 	 	 	 	 m a t c h i n g T a g s . p u s h ( t a g s [ t a g ] ) ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 	 
 	 	 r e t u r n ( m a t c h i n g T a g s ) ; 	 
 	 } 
 
 	 / /   o n l y   t a g s   b e g i n n i n g   w i t h   c a p i t a l   l e t t e r s ,   n u m b e r s ,   u n d e r s c o r e ,   d a s h   a r e   o k a y 
 	 f u n c t i o n   i s V a l i d T a g ( t a g )   { 
 	 	 v a r   f i r s t c h a r s   =   " A B C D E F G H I J K L M N O P Q R S T U V W X Y Z - _ 1 2 3 4 5 6 7 8 9 0 " ; 
 	 	 r e t u r n (   f i r s t c h a r s . i n d e x O f (   t a g [   0   ]   )   >   0   ) ; 
 	 } 
 
 	 f u n c t i o n   g e t C a c h e d T a g s ( )   { 	 	 
 	 	 / /   t h i s   n e e d s   a   c a c h e 
 	 	 r e t u r n (   g e t C a c h e d T a g s F r o m F S ( ) [ " t a g t r e e " ]   ) ; 
 	 	 / / r e t u r n (   c u r r e n t D B L e a f T a g s ( )   ) ; 	 
 	 } 
 	 f u n c t i o n   r e c o r d M e t a d a t a ( )   { 
                 r e t u r n   d t M e t a d a t a ( 
                       	 A p p l i c a t i o n ( ' D e v o n T h i n k   P r o ' ) . c o n t e n t R e c o r d . m e t a d a t a / / r e c o r d . m e t a d a t a ( ) 
               	 ) ; 
         } ; 
 	 f u n c t i o n   d t M e t a d a t a ( d t R e c s )   { 
 	 	 r e t u r n   s o r t B y ( c o m p a r i n g ( t o L o w e r ) ,   n u b ( c o n c a t M a p ( f u n c t i o n   ( x )   { 
               	 	 v a r   n e s t   =   x . c h i l d r e n ; 
               	 	 r e t u r n   n e s t . l e n g t h   ! = =   0   ?   d t L e a f T a g s ( n e s t ( ) )   :   x . t a g s ( ) ; 
                 } ,   d t R e c s ) ) ) ; 
 	 } 
 
 	 f u n c t i o n   g e t B o d y T e x t ( )   { 
 	 	 
 	 	 v a r   r e c o r d   =   A p p l i c a t i o n ( ' D e v o n T h i n k   P r o ' ) . c o n t e n t R e c o r d ; 
 / * 	 	 . s e l e c t i o n ( ) 
                 . m a p ( f u n c t i o n   ( x )   { 
                         r e t u r n   { 
                                 n a m e :   x . n a m e ( ) , 
                                 u r l :   x . r e f e r e n c e U R L ( ) 
                         } * / 
 	 	 v a r   r e c o r d _ m e t a d a t a   =   " " ; / / r e c o r d M e t a d a t a ( ) ; 
 
 
                 v a r   m e t a d a t a   =   " " ;   / * O b j e c t . k e y s ( r e c o r d _ M e t a d a t a ) 
                         . m a p ( f u n c t i o n   ( k )   { 
                                 r e t u r n   '   '   +   m e t a d a t a [ k ] ( ) 
                         } ) 
                         . c o n c a t ( [ r e c o r d . p l a i n T e x t ( ) ] ) 
                         . j o i n ( ' \ n ' ) ; * / 
 	 
 	 	 v a r   t e x t P o o l   =   [   r e c o r d . p l a i n T e x t ( ) ,   
 	 	 	 	 	 	   r e c o r d _ m e t a d a t a , 
 / * 	 	 	 	 	 	   r e c o r d _ M e t a d a t a . k M D I t e m T i t l e , 
 	 	 	 	 	 	   r e c o r d _ M e t a d a t a . k M D I t e m H e a d l i n e , 
 	 	 	 	 	 	   r e c o r d _ M e t a d a t a . k M D I t e m U R L , 
 	 	 	 	 	 	   r e c o r d _ M e t a d a t a . k M D I t e m S u b j e c t , 
 	 	 	 	 	 	   r e c o r d _ M e t a d a t a . k M D I t e m D e s c r i p t i o n , 
 	 	 	 	 	 	   r e c o r d _ M e t a d a t a . k M D I t e m C o m m e n t , 
 	 	 	 	 	 	   r e c o r d _ M e t a d a t a . k M D I t e m K e y w o r d s , 
 	 	 	 	 	 	   r e c o r d _ M e t a d a t a . k M D I t e m C r e a t o r , 
 	 	 	 	 	 	   r e c o r d _ M e t a d a t a . k M D I t e m C o p y r i g h t , * / 
 	 	 	 	 	 	   r e c o r d . n a m e ( ) , 
 	 	 	 	 	 	   r e c o r d . u r l ( ) , 
 	 	 	 	 	 	   r e c o r d . c o m m e n t ( )   ] ; 	 	 
 	 	 v a r   b o d y   =   t e x t P o o l . j o i n ( "   " ) ; 
 	 	 b o d y   =   b o d y . r e p l a c e ( " \ n " ,   "   " ) ; 
 	 	 	 	 
 	 	 r e t u r n (   b o d y   ) ; 
 
 	 } 
 
         / /   C A C H E   T A G S   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 
 	 v a r   s u i t e N a m e   =   " c o m . d a v e m e e . s t a g g e r " ; 
 	 v a r   c o n t e n t K e y   =   " t a g s " ; 
 	 v a r   $ u d ; 
 
 	 f u n c t i o n   g e t C a c h e d T a g s F r o m F S ( )   { 
 	 	 $ u d   =   $ . N S U s e r D e f a u l t s . a l l o c . i n i t W i t h S u i t e N a m e ( s u i t e N a m e ) ; 
 
 	 	 v a r   $ c o n t e n t   =   $ u d . s t r i n g F o r K e y ( c o n t e n t K e y ) ; 
 	 	 v a r   c o n t e n t V a l u e ; 
 	 	 i f ( $ c o n t e n t . i s N i l ( ) )   { 
 	 	 	 / /   n o t   s a v e d   -   w e   n e e d   t o   g e n e r a t e 
 	 	 	 $ c o n t e n t   =   {   " t a g t r e e "   :   c u r r e n t D B L e a f T a g s ( )   } ; 
 	 	 	 s a v e C a c h e d T a g s T o F S (   $ c o n t e n t   ) ; 
 	 	 }   e l s e   { 
 	 	 	 / /   r e c o v e r   i t 
 	 	 	 c o n t e n t V a l u e   =   $ c o n t e n t . j s ; 
 	 	 	 $ c o n t e n t   =   J S O N . p a r s e (   c o n t e n t V a l u e   ) ; 
 	 	 } 
 	 	 c o n s o l e . l o g ( $ c o n t e n t ) ; 
 	 	 r e t u r n   $ c o n t e n t ; 
 	 } 
 
 	 f u n c t i o n   s a v e C a c h e d T a g s T o F S (   t a g s   )   { 
 	 	 v a r   $ c o n t e n t   =   $ u d . s t r i n g F o r K e y ( c o n t e n t K e y ) ; 
 	 	 v a r   c o n t e n t V a l u e   =   J S O N . s t r i n g i f y (   t a g s   ) ; 
 	 	 $ u d . s e t O b j e c t F o r K e y ( $ ( c o n t e n t V a l u e . t o S t r i n g ( ) ) ,   c o n t e n t K e y ) ; 
 	 } 
 
         / /   A D D   T A G S   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 
 	 f u n c t i o n   a d d T a g s T o E n t r y (   t a g s ,   e n t r y   )   { 
 	 	 / /   t a g s   i s   a n   a r r a y   o f   s t r i n g s ,   e a c h   s t r i n g   c o r r e s p o n d i n g   w i t h   t h e   n a m e   o f   a   g r o u p / t a g   i n   D T 
 	 	 / /   h o u t h a k k e r   i s   a   G O D 
 	 
 	 	 f o r ( v a r   i   i n   t a g s )   { 
 	 	 	 v a r   t a g N a m e T o A d d   =   t a g s [ i ] ; 
 	 	 	 a d d S i n g l e T a g (   t a g ,   e n t r y   ) ; 
 	 	 } 
 	 } 
 
 	 f u n c t i o n   a d d S i n g l e T a g (   t a g ,   r e c   )   { 
 	 	 r e c . t a g s   =   r e c . t a g s ( ) . c o n c a t (   t a g N a m e T o A d d   ) ; 	 	 	 
 	 } 	 
 	 
         / /   M A I N   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 
 	 f u n c t i o n   h a n d l e ( )   { 	 	 
 	 	 v a r   t a g s   =   g e t C a c h e d T a g s ( ) ; 
 	 	 v a r   b o d y T e x t   =   g e t B o d y T e x t ( ) ; 
 	 	 
 	 	 v a r   m a t c h i n g T a g s   =   f i n d M a t c h i n g T a g s ( b o d y T e x t ,   t a g s ) ; 
 	 	 / /   b u i l d   a   s i m p l e   i n t e r f a c e 
 	 	 i f   ( m a t c h i n g T a g s   = = =   n u l l )   { 
 	 	 	 r e t u r n ( [ ] ) ; 
 	 	 } 
 	 	 i f (   m a t c h i n g T a g s . l e n g t h < 1 )   { 
 	 	 	 r e t u r n ( [ ] ) ; 
 	 	 } 
 	 	 d t . a c t i v a t e ( ) ; 
 	 	 v a r   t a g S e l e c t i o n   =   d t . c h o o s e F r o m L i s t ( m a t c h i n g T a g s , { 
 	 	 	 w i t h T i t l e : " M a t c h i n g   T a g s   i n   t e x t " , 
 	 	 	 w i t h P r o m p t : "# - c l i c k   t o   d e s e l e c t   m a t c h e s " , 
 	 	 	 d e f a u l t I t e m s :   m a t c h i n g T a g s , 
 	 	 	 m u l t i p l e S e l e c t i o n s A l l o w e d :   t r u e , 
 	 	 	 e m p t y S e l e c t i o n A l l o w e d :   t r u e 
 	 	 } ) ; 
 	 	 i f   ( t a g S e l e c t i o n ! = = n u l l )   { 
 	 	 	 i f ( t a g S e l e c t i o n . l e n g t h > 0 )   { 
 	 	 	 	 / /   a d d   e a c h   t a g   t o   t h e   r e c o r d 
 	 	 	 } 
 	 	 } 
 	 	 r e t u r n   t a g S e l e c t i o n ; 
 	 } 	 
 
 	 v a r   m a t c h i n g T a g s   =   h a n d l e ( ) ; 
 	 c o n s t   r e c   =   d t . s e l e c t i o n ( ) [   0   ] ; 
 	 a d d T a g s T o E n t r y (   m a t c h i n g T a g s ,   r e c   ) ; 
 	 / /   a d d S i n g l e T a g (   " S t a g g e r   t a g g e d " ,   r e c   ) ;   / /   y o u   n e e d   a   ' S t a g g e r   t a g g e d '   t a g   t o   b e   c r e a t e d   f o r   t h i s 
 	 r e t u r n   m a t c h i n g T a g s ; 
 
 } ) ( ) ; 
 
                              D\jscr  ��ޭ