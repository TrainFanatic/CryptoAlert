FasdUAS 1.101.10   ��   ��    k             l     ��  ��    H BAttempting to create a more user-friendly version of CryptoAlert--     � 	 	 � A t t e m p t i n g   t o   c r e a t e   a   m o r e   u s e r - f r i e n d l y   v e r s i o n   o f   C r y p t o A l e r t - -   
  
 l     ��  ��    * $CryptoAlert 0.1.0-dev, AppleScript--     �   H C r y p t o A l e r t   0 . 1 . 0 - d e v ,   A p p l e S c r i p t - -      l     ��  ��    0 *do shell script "lolee=lol; echo $lolee"--     �   T d o   s h e l l   s c r i p t   " l o l e e = l o l ;   e c h o   $ l o l e e " - -      l     ��  ��    f `As seen in the example above, all shell scripts must be in one line of osascript (AppleScript)--     �   � A s   s e e n   i n   t h e   e x a m p l e   a b o v e ,   a l l   s h e l l   s c r i p t s   m u s t   b e   i n   o n e   l i n e   o f   o s a s c r i p t   ( A p p l e S c r i p t ) - -      l     ��������  ��  ��        l     ��  ��     Functions here--     �     F u n c t i o n s   h e r e - -     !   l     �� " #��   " � �Editing files (from https://developer.apple.com/library/archive/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/ReadandWriteFiles.html)--    # � $ $B E d i t i n g   f i l e s   ( f r o m   h t t p s : / / d e v e l o p e r . a p p l e . c o m / l i b r a r y / a r c h i v e / d o c u m e n t a t i o n / L a n g u a g e s U t i l i t i e s / C o n c e p t u a l / M a c A u t o m a t i o n S c r i p t i n g G u i d e / R e a d a n d W r i t e F i l e s . h t m l ) - - !  % & % i      ' ( ' I      �� )���� "0 writetexttofile writeTextToFile )  * + * o      ���� 0 thetext theText +  , - , o      ���� 0 thefile theFile -  .�� . o      ���� 40 overwriteexistingcontent overwriteExistingContent��  ��   ( Q     [ / 0 1 / k    < 2 2  3 4 3 l   ��������  ��  ��   4  5 6 5 l   �� 7 8��   7 #  Convert the file to a string    8 � 9 9 :   C o n v e r t   t h e   f i l e   t o   a   s t r i n g 6  : ; : r     < = < c     > ? > o    ���� 0 thefile theFile ? m    ��
�� 
TEXT = o      ���� 0 thefile theFile ;  @ A @ l  	 	��������  ��  ��   A  B C B l  	 	�� D E��   D    Open the file for writing    E � F F 4   O p e n   t h e   f i l e   f o r   w r i t i n g C  G H G r   	  I J I I  	 �� K L
�� .rdwropenshor       file K 4   	 �� M
�� 
file M o    ���� 0 thefile theFile L �� N��
�� 
perm N m    ��
�� boovtrue��   J o      ���� 0 theopenedfile theOpenedFile H  O P O l   ��������  ��  ��   P  Q R Q l   �� S T��   S 6 0 Clear the file if content should be overwritten    T � U U `   C l e a r   t h e   f i l e   i f   c o n t e n t   s h o u l d   b e   o v e r w r i t t e n R  V W V Z   ' X Y���� X =    Z [ Z o    ���� 40 overwriteexistingcontent overwriteExistingContent [ m    ��
�� boovtrue Y I   #�� \ ]
�� .rdwrseofnull���     **** \ o    ���� 0 theopenedfile theOpenedFile ] �� ^��
�� 
set2 ^ m    ����  ��  ��  ��   W  _ ` _ l  ( (��������  ��  ��   `  a b a l  ( (�� c d��   c ( " Write the new content to the file    d � e e D   W r i t e   t h e   n e w   c o n t e n t   t o   t h e   f i l e b  f g f I  ( 1�� h i
�� .rdwrwritnull���     **** h o   ( )���� 0 thetext theText i �� j k
�� 
refn j o   * +���� 0 theopenedfile theOpenedFile k �� l��
�� 
wrat l m   , -��
�� rdwreof ��   g  m n m l  2 2��������  ��  ��   n  o p o l  2 2�� q r��   q   Close the file    r � s s    C l o s e   t h e   f i l e p  t u t I  2 7�� v��
�� .rdwrclosnull���     **** v o   2 3���� 0 theopenedfile theOpenedFile��   u  w x w l  8 8��������  ��  ��   x  y z y l  8 8�� { |��   { > 8 Return a boolean indicating that writing was successful    | � } } p   R e t u r n   a   b o o l e a n   i n d i c a t i n g   t h a t   w r i t i n g   w a s   s u c c e s s f u l z  ~  ~ L   8 : � � m   8 9��
�� boovtrue   � � � l  ; ;��������  ��  ��   �  ��� � l  ; ;�� � ���   �   Handle a write error    � � � � *   H a n d l e   a   w r i t e   e r r o r��   0 R      ������
�� .ascrerr ****      � ****��  ��   1 k   D [ � �  � � � l  D D��������  ��  ��   �  � � � l  D D�� � ���   �   Close the file    � � � �    C l o s e   t h e   f i l e �  � � � Q   D X � ��� � I  G O�� ���
�� .rdwrclosnull���     **** � 4   G K�� �
�� 
file � o   I J���� 0 thefile theFile��   � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  � � � l  Y Y��������  ��  ��   �  � � � l  Y Y�� � ���   � 6 0 Return a boolean indicating that writing failed    � � � � `   R e t u r n   a   b o o l e a n   i n d i c a t i n g   t h a t   w r i t i n g   f a i l e d �  ��� � L   Y [ � � m   Y Z��
�� boovfals��   &  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � � �Replace patterns of text. From https://developer.apple.com/library/archive/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/ManipulateText.html#//apple_ref/doc/uid/TP40016239-CH33-SW1--    � � � �� R e p l a c e   p a t t e r n s   o f   t e x t .   F r o m   h t t p s : / / d e v e l o p e r . a p p l e . c o m / l i b r a r y / a r c h i v e / d o c u m e n t a t i o n / L a n g u a g e s U t i l i t i e s / C o n c e p t u a l / M a c A u t o m a t i o n S c r i p t i n g G u i d e / M a n i p u l a t e T e x t . h t m l # / / a p p l e _ r e f / d o c / u i d / T P 4 0 0 1 6 2 3 9 - C H 3 3 - S W 1 - - �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 replacetext replaceText �  � � � o      ���� 0 thetext theText �  � � � o      ���� "0 thesearchstring theSearchString �  ��� � o      ���� ,0 thereplacementstring theReplacementString��  ��   � k       � �  � � � r      � � � o     ���� "0 thesearchstring theSearchString � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  � � � r     � � � n    	 � � � 2    	��
�� 
citm � o    ���� 0 thetext theText � o      ���� 0 thetextitems theTextItems �  � � � r     � � � o    ���� ,0 thereplacementstring theReplacementString � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  � � � r     � � � c     � � � o    ���� 0 thetextitems theTextItems � m    ��
�� 
TEXT � o      ���� 0 thetext theText �  � � � r     � � � m     � � � � �   � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  ��� � L      � � o    ���� 0 thetext theText��   �  � � � l     ��������  ��  ��   �  � � � l     � � ��   � % Does the user have an API ID?--    � � � � > D o e s   t h e   u s e r   h a v e   a n   A P I   I D ? - - �  � � � i    � � � I      �~�}�|�~ 0 isapipresent isAPIPresent�}  �|   � k     X � �  � � � r      � � � I    �{ � �
�{ .sysodlogaskr        TEXT � m      � � � � � F D o   y o u   h a v e   a   c o i n m a r k e t c a p   A P I   I D ? � �z ��y
�z 
btns � J     � �  � � � m     � � � � �  Y e s �  � � � m     � � � � �  N o �  ��x � m     � � � � � $ W h a t   i s   a n   A P I   I D ?�x  �y   � o      �w�w 0 apiidpresence apiIDPresence �  ��v � Z    X � � ��u � l    ��t�s � =     � � � o    �r�r 0 apiidpresence apiIDPresence � K     � � �q ��p
�q 
bhit � m     � � � � �  Y e s�p  �t  �s   � L       m    �o
�o boovtrue �  l   "�n�m =    " o    �l�l 0 apiidpresence apiIDPresence K    ! �k�j
�k 
bhit m     �		  N o�j  �n  �m   

 k   % 8  O   % 5 k   ) 4  I  ) .�i�h�g
�i .miscactvnull��� ��� null�h  �g   �f I  / 4�e�d
�e .GURLGURLnull��� ��� TEXT m   / 0 � L h t t p s : / / c o i n m a r k e t c a p . c o m / a p i / p r i c i n g /�d  �f   m   % &�                                                                                  rimZ  alis    >  Macintosh HD                   BD ����Google Chrome.app                                              ����            ����  
 cu             Applications  !/:Applications:Google Chrome.app/   $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��   �c L   6 8 m   6 7�b
�b boovfals�c    l  ; A�a�` =   ; A o   ; <�_�_ 0 apiidpresence apiIDPresence K   < @   �^!�]
�^ 
bhit! m   = >"" �## $ W h a t   i s   a n   A P I   I D ?�]  �a  �`   $�\$ O   D T%&% k   H S'' ()( I  H M�[�Z�Y
�[ .miscactvnull��� ��� null�Z  �Y  ) *�X* I  N S�W+�V
�W .GURLGURLnull��� ��� TEXT+ m   N O,, �-- L h t t p s : / / c o i n m a r k e t c a p . c o m / a p i / p r i c i n g /�V  �X  & m   D E..�                                                                                  rimZ  alis    >  Macintosh HD                   BD ����Google Chrome.app                                              ����            ����  
 cu             Applications  !/:Applications:Google Chrome.app/   $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��  �\  �u  �v   � /0/ l     �U�T�S�U  �T  �S  0 121 l     �R34�R  3 d ^Once all has been done, does the user have a saved key? If not, do you want to save the key?--   4 �55 � O n c e   a l l   h a s   b e e n   d o n e ,   d o e s   t h e   u s e r   h a v e   a   s a v e d   k e y ?   I f   n o t ,   d o   y o u   w a n t   t o   s a v e   t h e   k e y ? - -2 676 i   898 I      �Q�P�O�Q 0 	detectkey 	detectKey�P  �O  9 k     &:: ;<; r     =>= I    �N?�M
�N .sysoexecTEXT���     TEXT? m     @@ �AA � i f   [   - e   . / . K e y   ] ;   t h e n   e c h o   ' T h e r e   i s   a   K e y ' ;   e l s e   e c h o   ' T h e r e   i s   n o   k e y ' ;   f i�M  > o      �L�L 0 keypresence keyPresence< B�KB Z    &CDEFC l   G�J�IG =    HIH o    	�H�H 0 keypresence keyPresenceI m   	 
JJ �KK  T h e r e   i s   a   K e y�J  �I  D L    LL m    �G
�G boovtrueE MNM l   O�F�EO =    PQP o    �D�D 0 keypresence keyPresenceQ m    RR �SS  T h e r e   i s   n o   K e y�F  �E  N T�CT L    UU m    �B
�B boovfals�C  F k    &VV WXW R    $�A�@Y
�A .ascrerr ****      � ****�@  Y �?Z�>
�? 
errnZ m     !�=�=���>  X [�<[ l  % %�;\]�;  \ 8 2error -2742 produces error "Way too long, dude."--   ] �^^ d e r r o r   - 2 7 4 2   p r o d u c e s   e r r o r   " W a y   t o o   l o n g ,   d u d e . " - -�<  �K  7 _`_ l     �:ab�:  a   Asks user for API ID key--   b �cc 4 A s k s   u s e r   f o r   A P I   I D   k e y - -` ded i   fgf I      �9�8�7�9 0 getkey getKey�8  �7  g k     'hh iji r     klk I    �6mn
�6 .sysodlogaskr        TEXTm m     oo �pp L P l e a s e   p a s t e   y o u r   c o i n m a r k e t c a p   A P I   I Dn �5qr
�5 
dtxtq m    ss �tt  r �4uv
�4 
btnsu J    ww xyx m    zz �{{  C a n c e ly |�3| m    }} �~~  C o n t i n u e�3  v �2�
�2 
dflt m   	 
�� ���  C o n t i n u e� �1��0
�1 
htxt� m    �/
�/ boovtrue�0  l o      �.�. 0 thekey theKeyj ��� r    ��� I    �-��,�- 0 replacetext replaceText� ��� o    �+�+ 0 thekey theKey� ��� m    �� ���  {� ��*� m    �� ���  �*  �,  � o      �)�) 0 	filtered1  � ��(� l   '���� L    '�� I    &�'��&�' 0 replacetext replaceText� ��� o     �%�% 0 	filtered1  � ��� m     !�� ���  C o n t i n u e� ��$� m   ! "�� ���  �$  �&  �  returns password only--   � ��� . r e t u r n s   p a s s w o r d   o n l y - -�(  e ��� i   ��� I      �#��"�# 0 savekey saveKey� ��!� o      � �  0 thekey theKey�!  �"  � k     �� ��� I    ���
� .sysoexecTEXT���     TEXT� m     �� ���  t o u c h   . K e y�  � ��� I    ���� "0 writetexttofile writeTextToFile� ��� o    �� 0 thekey theKey� ��� m    	�� ���  . K e y� ��� m   	 
�
� boovtrue�  �  �  � ��� l     ����  �  Code Here--   � ���  C o d e   H e r e - -� ��� l    ���� I     ���� 0 	detectkey 	detectKey�  �  �  �  � ��� l   ���� Z    ����� l   ���� =    ��� I    ��
�	� 0 isapipresent isAPIPresent�
  �	  � m    �
� boovtrue�  �  � r    ��� I    ���� 0 getkey getKey�  �  � o      �� 0 thekey theKey�  �  �  �  � ��� l     ����  �  �  � ��� l     � �����   ��  ��  � ���� l     ��������  ��  ��  ��       	������������  � ���������������� "0 writetexttofile writeTextToFile�� 0 replacetext replaceText�� 0 isapipresent isAPIPresent�� 0 	detectkey 	detectKey�� 0 getkey getKey�� 0 savekey saveKey
�� .aevtoappnull  �   � ****� �� (���������� "0 writetexttofile writeTextToFile�� ����� �  �������� 0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent��  � ���������� 0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent�� 0 theopenedfile theOpenedFile� ����������������������������
�� 
TEXT
�� 
file
�� 
perm
�� .rdwropenshor       file
�� 
set2
�� .rdwrseofnull���     ****
�� 
refn
�� 
wrat
�� rdwreof �� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****��  ��  �� \ >��&E�O*�/�el E�O�e  ��jl Y hO����� 
O�j OeOPW X   *�/j W X  hOf� �� ����������� 0 replacetext replaceText�� ����� �  �������� 0 thetext theText�� "0 thesearchstring theSearchString�� ,0 thereplacementstring theReplacementString��  � ���������� 0 thetext theText�� "0 thesearchstring theSearchString�� ,0 thereplacementstring theReplacementString�� 0 thetextitems theTextItems� �������� �
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT�� !���,FO��-E�O���,FO��&E�O���,FO�� �� ����������� 0 isapipresent isAPIPresent��  ��  � ���� 0 apiidpresence apiIDPresence�  ��� � � ����� �����",
�� 
btns
�� .sysodlogaskr        TEXT
�� 
bhit
�� .miscactvnull��� ��� null
�� .GURLGURLnull��� ��� TEXT�� Y�����mvl E�O���l  eY >���l  � *j 
O�j UOfY ���l  � *j 
O�j UY h� ��9���������� 0 	detectkey 	detectKey��  ��  � ���� 0 keypresence keyPresence� @��JR����
�� .sysoexecTEXT���     TEXT
�� 
errn������ '�j E�O��  eY ��  fY 
)��lhOP� ��g���������� 0 getkey getKey��  ��  � ������ 0 thekey theKey�� 0 	filtered1  � o��s��z}���������������
�� 
dtxt
�� 
btns
�� 
dflt
�� 
htxt�� 
�� .sysodlogaskr        TEXT�� 0 replacetext replaceText�� (������lv���e� 
E�O*���m+ E�O*���m+ � ������������� 0 savekey saveKey�� ����� �  ���� 0 thekey theKey��  � ���� 0 thekey theKey� ������
�� .sysoexecTEXT���     TEXT�� "0 writetexttofile writeTextToFile�� �j O*��em+ � �����������
�� .aevtoappnull  �   � ****� k     �� ��� �����  ��  ��  �  � ���������� 0 	detectkey 	detectKey�� 0 isapipresent isAPIPresent�� 0 getkey getKey�� 0 thekey theKey�� *j+  O*j+ e  *j+ E�Y hascr  ��ޭ