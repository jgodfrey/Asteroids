GDPC                                                                                <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�      �      �p��<f��r�g��.�@   res://.import/laser.png-f4ce210a174cac85145e35b68cb78881.stex    )      k       8�� 졹y�>��b�8<   res://.import/ship.png-4d5e64b785005468aa74f7ca14df1341.stex ,            ����Pc�o�e]up`   res://Bullet.gd.remap   �0      !       טdZ�=���B!��q'5   res://Bullet.gdc�      �      Y'eN��6uK�^��   res://Bullet.tscn   �      K      ���?�>�e�����Lґ   res://Main.gd.remap �0             �(@Er�#��K�F�[   res://Main.gdc  �	            "-b���Xh��а   res://Main.tscn        Q      (N/�%^��fsP%p_   res://Ship.gd.remap  1             �G׋%��UIx\ī�l   res://Ship.gdc  `      '      ا�":#��V�o��`   res://Ship.tscn �      �      !�lW�_��.��[ʭ   res://default_env.tres  0      �       um�`�N��<*ỳ�8   res://icon.png   1      i      ����󈘥Ey��
�   res://icon.png.import   �&      �      �����%��(#AB�   res://project.binary�>      p      ����s�C)�� ��    res://sprites/laser.png.import  p)      �      �"z��0i���72�    res://sprites/ship.png.import    .      �      g5o<F���z�(�GDSC            f      ���ׄ�   ����Ҷ��   �������϶���   ����¶��   ��Ŷ   ��Ķ   �������ض���   �������ض���   ������Ҷ   �������Ŷ���   ����׶��(   ���������������������Ą��������������Ҷ�   ���������Ӷ�   ����������������������Ҷ   ���϶���   ����������ƶ   ������Ӷ             rocks                      
                              #   	   1   
   2      9      ?      @      F      J      K      R      [      a      3YY8P�  Q;�  Y;�  �  PQYY0�  P�  R�  QV�  �  �  �  �  �  �  �  �  P�  RQT�  P�  QYY0�	  P�
  QV�  �  �  �
  YY0�  PQV�  �  PQYY0�  P�  QV�  &�  T�  P�  QV�  �  T�  PQ�  �  PQ`         [gd_scene load_steps=4 format=2]

[ext_resource path="res://Bullet.gd" type="Script" id=1]
[ext_resource path="res://sprites/laser.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 2.99611, 0.502332 )

[node name="Bullet" type="Area2D"]
script = ExtResource( 1 )
speed = 1000

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0, -0.5 )
shape = SubResource( 1 )

[node name="VisibilityNotifier2D" type="VisibilityNotifier2D" parent="."]
     GDSC   	          '      ���Ӷ���   �������������¶�   �����¶�   ��Ŷ   ��Ķ   Զ��   �������Ӷ���   ����¶��   ��������Ҷ��                                      %      3YY0�  P�  R�  R�  QV�  ;�  �  T�  PQ�  �  T�  P�  R�  Q�  �  P�  QY`         [gd_scene load_steps=3 format=2]

[ext_resource path="res://Main.gd" type="Script" id=1]
[ext_resource path="res://Ship.tscn" type="PackedScene" id=2]

[node name="Main" type="Node"]
script = ExtResource( 1 )

[node name="Ship" parent="." instance=ExtResource( 2 )]
[connection signal="shoot" from="Ship" to="." method="_on_Ship_shoot"]
               GDSC   (   	   ;   j     ��������τ�   ����¶��   �����������Ķ���   ���������Ķ�   ����������Ӷ   �����¶�   ��������Ӷ��   ��������¶��   �����¶�   �����������Ķ���   ����������Ӷ   �����϶�   �����������¶���   ���������������¶���   ���Ӷ���   �������ض���   ζ��   ϶��   �������Ķ���   ��������Ӷ��   �������Ŷ���   ����׶��   ��������¶��   ����¶��   ����������������Ҷ��   ����������������Ŷ��   ������������Ӷ��   ����������������Ӷ��   ������Ҷ   �������ض���   �����������������Ӷ�   ����۶��   ������������۶��   �����ض�   ������������۶��   �������������������¶���   ����������ڶ   �����Ӷ�   ��������������ض   ����¶��                         up        right               left      shoot                                                           #   	   $   
   %      *      1      6      7      >      ?      E      Q      [      e      l      m      t      x      y            �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -     .     /     0   #  1   -  2   7  3   >  4   ?  5   E  6   I  7   J  8   P  9   ^  :   b  ;   3YYB�  YY8P�  Q;�  Y8P�  Q;�  Y8P�  Q;�  Y8P�  Q;�  YYY;�  Y;�  �  PQY;�	  �  YY;�
  �  PQYY0�  PQV�  �
  �  PQT�  PQT�  �  �  T�  �
  T�  �  �  �  T�  �
  T�  �  �  W�  T�  �  YY0�  P�  QV�  �  PQYY0�  PQV�  �  �  PQ�  &�  T�  P�  QV�  �  �  P�  R�  QY�  �	  �  �  &�  T�  P�  QV�  �	  �  �  &�  T�  P�  QV�  �	  �  �  &�  T�  P�  Q�  V�  �  PQYY0�  P�  QV�  �  P�  T�  P�  QQ�  �  P�  �	  Q�  ;�  �  T�   PQ�  &�  T�!  T�  �
  T�  V�  �  T�!  T�  �  �  &�  T�!  T�  	�  V�  �  T�!  T�  �
  T�  �  &�  T�!  T�  �
  T�  V�  �  T�!  T�  �  �  &�  T�!  T�  	�  V�  �  T�!  T�  �
  T�  �  �  T�"  P�  QYY0�#  PQV�  �  YY0�  PQV�  �$  P�  R�  RW�%  T�&  R�  Q�  �  �  �  W�  T�'  PQ`         [gd_scene load_steps=5 format=2]

[ext_resource path="res://Ship.gd" type="Script" id=1]
[ext_resource path="res://Bullet.tscn" type="PackedScene" id=2]
[ext_resource path="res://sprites/ship.png" type="Texture" id=3]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 13.6306, 8.5595 )

[node name="Ship" type="RigidBody2D"]
position = Vector2( 1, 0 )
script = ExtResource( 1 )
engine_power = 500
spin_power = 1500
Bullet = ExtResource( 2 )
fire_rate = 0.2

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Muzzle" type="Position2D" parent="."]
position = Vector2( 17, -0.5 )

[node name="GunTimer" type="Timer" parent="."]
one_shot = true
autostart = true

[node name="Timer" type="Timer" parent="."]
[connection signal="timeout" from="GunTimer" to="." method="_on_GunTimer_timeout"]
[gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           |  PNG �PNG

   IHDR   @   @   �iq�  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST              O   PNG �PNG

   IHDR         r�H�   IDAT�c���$p��} �H/�<Y    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/laser.png-f4ce210a174cac85145e35b68cb78881.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprites/laser.png"
dest_files=[ "res://.import/laser.png-f4ce210a174cac85145e35b68cb78881.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     GDST               �  PNG �PNG

   IHDR         �55_  �IDATH�Ŗ�KUa�?G.En!N�u�"�D�hh�T�	-nwh\܂�٭?@�RR���@tg��JS~޷�A��۽����=�y���>��}N�>րW�wZ@�$��H�g�60��͐���Q��{�:P> o�	��4!�M���O=��������UOgm&
���z-�vL��>Vw�UuJ��,$gq0
��<��W�i�����W/5C��x�8"����O�`�?�.��$tB��EԀS��(��l�,�E!��`�^?�&Ϣ�45���Y����T�9QU���[��v��o	6���/�ګ�!�g���W��kS��>O���^)8���C�'|�i��i������w
�j��6��]l��^��73k�����O��T{b:��4�����y$\T'Ԯ�"���:o��4�*������; M��ʵ��    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/ship.png-4d5e64b785005468aa74f7ca14df1341.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprites/ship.png"
dest_files=[ "res://.import/ship.png-4d5e64b785005468aa74f7ca14df1341.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       [remap]

path="res://Bullet.gdc"
               [remap]

path="res://Main.gdc"
 [remap]

path="res://Ship.gdc"
 �PNG

   IHDR   @   @   �iq�  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name      	   Asteroids      application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     display/window/size/width            display/window/stretch/mode         2d     display/window/stretch/aspect         keep
   input/left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script               InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            input/right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script               InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            input/up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script               InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            input/shootd              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script               deadzone      ?/   input_devices/pointing/emulate_touch_from_mouse            physics/2d/default_gravity             physics/2d/default_linear_damp        �?   physics/2d/default_angular_damp         #   rendering/quality/2d/use_pixel_snap         )   rendering/environment/default_clear_color                    �?)   rendering/environment/default_environment          res://default_env.tres  GDPC