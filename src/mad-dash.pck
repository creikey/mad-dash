GDPC                                                                             '   <   res://.import/goal.png-d8026b4c83cd0c976a2c07258ba1a29e.stex�.      �      ��˥y?�Q���X�<   res://.import/goal.svg-ad93b98b0eb400e32761d19a8827641a.stex�2      �      ��˥y?�Q���X�<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stexP7      �      d�a;1s���mыei�-@   res://.import/player.png-2dd0af52de4b213777cd8c9df94c0978.stex  �G      �      w�O�x�t'#뿵���@   res://.import/player.svg-6d2d65638c721fdbfc24387a7aa9f5c1.stex  �U      �      ��N�%�X��a���<   res://.import/wall.png-e3261c66ad83b71f524576fb4f3c7b5b.stexpj      �      ��G%�i����O�<   res://.import/wall.svg-e0c7620cc03d5242e3aa9a9f7405050f.stex�n      �      ��G%�i����O�   res://GameManager.gd.remap  0s      &       f��j=4ߘL̻!   res://GameManager.gdc   P
      �      Ɠ�����jY�Ƥa   res://Goal.gd.remap `s             ��PWo�&s�u�Z B�1   res://Goal.gdc  @      �       �#���E#g��^�z�   res://Goal.tscn 0      =      k�F5��u�Q@��2n   res://Main.gd.remap �s             �(@Er�#��K�F�[   res://Main.gdc  p      �       Kƨx�͚�����-   res://Main.tscn        �      :�����eb�?����   res://Player.gd.remap   �s      !       ��0�F �qq��dX��   res://Player.gdc�      s      �Сˉ}���i�|"�   res://PossibleKey.gd.remap  �s      &       �o��Mp�BX�6�lV�   res://PossibleKey.gdc   P      �      �p�klmޯ)��$ �   res://PossibleKey.tscn  �       �      �7n�b��D��D�<�   res://PossibleSpots.gd.remap t      (       �3���H9��Z$G   res://PossibleSpots.gdc �"            F ��Dū�c�$?�\   res://StageManager.gd.remap 0t      '       F��%��2���u2r   res://StageManager.gdc  �'      �      ��d��񶾦,Z�G2/   res://TimeLabel.gd.remap`t      $       �5F� �������]M   res://TimeLabel.gdc �)      �       T>9�G��.�,��   res://TimeLabel.tscn�*            �δ}ا1,y12��3w   res://Won.tscn  �+      +      潿��t���B��L�i�   res://default_env.tres  �-      �       um�`�N��<*ỳ�8   res://goal.png.import   p0      �      ��3�844F�m�w4/�   res://goal.svg.import   �4      �      ��Hş��A�'��ɑ�   res://icon.png  �t      v      ge��@o�7�|AZ   res://icon.png.import    E      �      �����%��(#AB�   res://player.png.import `S      �      ��ta�����n��   res://player.svg.import �b      �      ��|�Xm�Z��L��v   res://project.binary�      S      �0����-�UA$'o��{   res://stages/StageOne.tscn  �e      �      �{�������#�8��   res://wall.png.import   Pl      �      4��O��a4( X%�   res://wall.svg.import   �p      �      ����?�n�ZS��        GDSC   	         E      ���Ӷ���   ���Ӷ���   ���������Ӷ�   �������Ӷ���   �����������Ӷ���   ��ض   �����¶�   ����¶��   ����������������Ҷ��             res://Main.tscn       res://Won.tscn     	   g_restart                      
                                 	   %   
   .      /      6      ?      C      3YY;�  V�  YY0�  PQV�  �  �  �  PQT�  P�  QYY0�  PQV�  �  PQT�  P�  QYY0�  P�  QV�  &�  T�  P�  QV�  �  PQY`         GDSC                  ���ׄ�   ��������������������Ҷ��   ���϶���   ����������ƶ   ����������Ķ   ��ض      player                                             3YYY0�  P�  QV�  &�  T�  PQV�  �  T�  PQY`[gd_scene load_steps=4 format=2]

[ext_resource path="res://goal.png" type="Texture" id=1]
[ext_resource path="res://Goal.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 70, 70 )

[node name="Goal" type="Area2D"]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
centered = false

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 70, 70 )
shape = SubResource( 1 )
[connection signal="body_entered" from="." to="." method="_on_Goal_body_entered"]
   GDSC                   ���ӄ�   �������Ŷ���   ����׶��   ����������Ķ   ���Ӷ���                   
            3YY0�  P�  QV�  �  T�  �  Y`        [gd_scene load_steps=9 format=2]

[ext_resource path="res://PossibleSpots.gd" type="Script" id=1]
[ext_resource path="res://player.png" type="Texture" id=2]
[ext_resource path="res://Player.gd" type="Script" id=3]
[ext_resource path="res://stages/StageOne.tscn" type="PackedScene" id=4]
[ext_resource path="res://StageManager.gd" type="Script" id=5]
[ext_resource path="res://TimeLabel.tscn" type="PackedScene" id=6]
[ext_resource path="res://Main.gd" type="Script" id=7]

[sub_resource type="CircleShape2D" id=1]
radius = 43.151

[node name="Main" type="Node2D"]
script = ExtResource( 7 )

[node name="UI" type="CanvasLayer" parent="."]

[node name="TimeLabel" parent="UI" instance=ExtResource( 6 )]

[node name="GameWorld" type="CanvasLayer" parent="."]

[node name="MarginContainer" type="MarginContainer" parent="GameWorld"]
anchor_right = 1.0
anchor_bottom = 1.0
custom_constants/margin_right = 200
custom_constants/margin_top = 240
custom_constants/margin_left = 200
custom_constants/margin_bottom = 240
__meta__ = {
"_edit_use_anchors_": false
}

[node name="PossibleSpots" type="GridContainer" parent="GameWorld/MarginContainer"]
margin_left = 200.0
margin_top = 240.0
margin_right = 1600.0
margin_bottom = 660.0
custom_constants/vseparation = 0
custom_constants/hseparation = 0
columns = 10
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="StageManager" type="Node2D" parent="."]
script = ExtResource( 5 )

[node name="StageOne" parent="StageManager" instance=ExtResource( 4 )]
tile_data = PoolIntArray( 1, 1, 0, 6, 1, 0, 9, 0, 0, 65537, 1, 0, 65539, 1, 0, 65540, 1, 0, 65542, 1, 0, 65543, 1, 0, 65545, 1, 0, 131075, 1, 0 )

[node name="Player" type="KinematicBody2D" parent="." groups=[
"player",
]]
script = ExtResource( 3 )

[node name="Sprite" type="Sprite" parent="Player"]
texture = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Player"]
shape = SubResource( 1 )
[connection signal="new_position" from="GameWorld/MarginContainer/PossibleSpots" to="Player" method="_on_PossibleSpots_new_position"]
[connection signal="starting_position" from="GameWorld/MarginContainer/PossibleSpots" to="Player" method="_on_PossibleSpots_starting_position"]
 GDSC         '   �      ������������τ�   �������������ڶ�   ����������������϶��   ����ڶ��   �������϶���   ������������������ض   ����������������ض��   ���������������������ض�   �������¶���   ���������������Ŷ���   ����׶��   ���������������Ӷ���   ��������������ض   �����޶�   ����������ٶ   �������������Ӷ�    �����������������������������ض�   �����������ض���   ������¶   ������Ҷ   �������������¶�   ��������������������ض��$   ����������������������������������ض   �������ض���     �D     aD            A                                                                !   	   *   
   5      <      =      D      I      P      T      U      [      l      w      }      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   3YY:�  Y:�  �  YY;�  V�  �  PQY;�  V�  �  PQYY;�  V�  �  PQY;�  V�  �  PQ9�  Y;�  V�  �  YY0�	  P�
  QV�  &�  V�  �  P�  �  Q�  �  �  �  �  �  �  �
  �  �  P�  T�  PQ�  Q�  �
  �  &�  T�  P�  Q
�  V�  �  �  PQ�  �  �  PQ�  �  �  P�  QYY0�  P�  QV�  �  �  �  �  �  T�  P�  �  Q�  �  �  P�  R�  QT�  P�  T�  P�  QZQ�  �?  P�  Q�  YY0�  P�  QV�  �  �  �  �  �  �  �  �  YY0�  P�  QV�  T�  �  Y`             GDSC            _      ��������������Ķ   ����������϶   ������Ҷ   �����Ķ�   �����������ض���   �������Ӷ���   ����ڶ��   ���¶���   �����¶�   ����¶��   ������������϶��   ������Ӷ   ����������ڶ   ������������������ض   ��������������¶   �������ض���   ��������Ӷ��      l         pressed       @                                                    	      
   #      $      +      >      I      J      R      ]      3YY2�  YYB�  P�  R�  QYY;�  YY0�  PQV�  W�  T�  �  YY0�  P�	  QV�  &�	  4�
  �	  T�  �	  T�  �=  P�  QV�  �  P�  R�  R�  PQQYY0�  PQX�  V�  .�  PQT�  �  �  Y`      [gd_scene load_steps=2 format=2]

[ext_resource path="res://PossibleKey.gd" type="Script" id=1]

[node name="PossibleKey" type="MarginContainer"]
anchor_right = 1.0
anchor_bottom = 1.0
size_flags_horizontal = 3
size_flags_vertical = 3
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="."]
margin_top = 443.0
margin_right = 1800.0
margin_bottom = 457.0
text = "l"
align = 1
valign = 1
    GDSC             �      ������������Ķ��   ����������������ض��   �������ض���   �����������ض���   ������������Ķ��   ���Ŷ���   �����϶�   Ķ��   ��������Ķ��   ���������������϶���   ����������϶   �������Ӷ���   ��������Ҷ��   ���Ӷ���   �����Ķ�   ������¶   �������Ӷ���   �������Ŷ���   ����׶��   ����������ڶ   �������Ӷ���   ������������������ض   ����������Ŷ   ����������Ҷ          
   qwertyuiop     
   asdfghjkl;     
   zxcvbnm,./        res://PossibleKey.tscn        Key_      pressed       key_pressed                   starting_position         Key_q                new_position                   	                                 	       
   #      %      '      (      .      4      :      H      M      X      ^      i      o      p      w      {      �      �      �      �      �      �       3YYB�  P�  QYB�  P�  QYY;�  V�  YY;�  L�  �  R�  �  R�  �  YMYY0�  PQV�  )�  �  V�  )�  �  V�  ;�	  V�
  ?P�  QT�  PQ�  �  P�	  Q�  �	  T�  �>  P�  R�  Q�  �	  T�  �  �  �	  T�  P�  RR�  Q�  �	  T�  PQYY0�  P�  QV�  �  �  �  &�  �	  V�  �  P�
  R�  P�  QT�  PQQ�  �  P�  QYY0�  P�  R�  QV�  �  P�  R�  QY`               GDSC            K      ���ӄ�   �����϶�   ������������Ӷ��   ���������������������ض�   �������Ӷ���   �����������Ҷ���   �������������������Ҷ���   ��������������ض   �������ڶ���   �������Ӷ���   ��������Ҷ��             res://Goal.tscn                    	                        /      0   	   >   
   C      I      3YY0�  PQV�  �  PQYY0�  PQV�  ;�  V�  W�  T�  PW�  T�  PQLMQW�  T�  �  �  ;�  V?P�  QT�	  PQ�  �
  P�  Q�  �  T�  �  Y`      GDSC                  ����ڶ��   �������Ŷ���   ����׶��   ���¶���   ����������Ķ   ���Ӷ���  �������?                   
            3YY0�  P�  QV�  �  �>  P�  P�  T�  RQQY`  [gd_scene load_steps=2 format=2]

[ext_resource path="res://TimeLabel.gd" type="Script" id=1]

[node name="TimeLabel" type="Label"]
anchor_right = 1.0
margin_bottom = 117.0
text = "0.00"
align = 1
valign = 1
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}
           [gd_scene load_steps=2 format=2]

[ext_resource path="res://TimeLabel.tscn" type="PackedScene" id=1]

[node name="Won" type="Node2D"]

[node name="CanvasLayer" type="CanvasLayer" parent="."]

[node name="TimeLabel" parent="CanvasLayer" instance=ExtResource( 1 )]
anchor_bottom = 1.0
margin_bottom = 0.0

[node name="InstructionsLabel" type="Label" parent="CanvasLayer"]
anchor_top = 1.0
anchor_right = 1.0
anchor_bottom = 1.0
margin_top = -166.0
text = "Press Escape to Restart at any time"
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}
     [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST�   �           �  PNG �PNG

   IHDR   �   �   ��A>   sRGB ���  qIDATx���A�0 ��1s�l�0닐�)��z�w���u �bÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐl\��ˁ�w    IEND�B`�         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/goal.png-d8026b4c83cd0c976a2c07258ba1a29e.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://goal.png"
dest_files=[ "res://.import/goal.png-d8026b4c83cd0c976a2c07258ba1a29e.stex" ]

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
GDST�   �           �  PNG �PNG

   IHDR   �   �   ��A>   sRGB ���  qIDATx���A�0 ��1s�l�0닐�)��z�w���u �bÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐl\��ˁ�w    IEND�B`�         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/goal.svg-ad93b98b0eb400e32761d19a8827641a.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://goal.svg"
dest_files=[ "res://.import/goal.svg-ad93b98b0eb400e32761d19a8827641a.stex" ]

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
GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�           [remap]

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
GDST�   �           �  PNG �PNG

   IHDR   �   �   ��A>   sRGB ���  vIDATx����\U�?ϙ��Z�Dc�����*���Fl"�CL��K1*���[��' 1�H��v�-IZ"/1B�b_ФP0�`h�iag���ޝ3w�vi�{ν��'9����y�{�w��~�a�a�a�a�a�a�a�a�a�a�a�aہ�\�U?�B��S�5x��w-�l�;ߴmPn��W}�8�`�٫f�I���{��t(�n�$r$���U�[������;-�s�x��C0�ޥ�
�%��M���n�]l��/��O0 �h��Y�r�,O��8�(-�ǻp,��(�āz�|�h!��^�i��c�������>�J7�zu�A�X��3�ɷ���A�NyA�'�#�`��'���b��n�p��xA(�;��!9X\���R��/�K���U��qʉ�)-����	�1�n��?˗d�
�S/�8��
�6�7!8&�;���>�ԽR�����w4�Q4���-J��
Y��B�(��6D��B�E����
o\P�(L5�UU{Ƕ*�)b.�hZ�lU�'��!�{���s`p(K�:Y�"���m,4��%��seW�.�P��!�R�>��L.������n�K�s��%}*Y��{{�
;aw�p��#���Bd)2^6lQj'�k��l�$)�y���wgun�xa�)v����5��*�%���1]*�m���bX�2)ik�}߸���h���w|Bg��;�W���6�.	�\�<����B���`M�4��b�z�攋����2�o�x��e��ebh)L��qէH�+��p�V���I�W, I�	k�R�ԅ�ݪ�u��H��ıXگHw	�gJ���zG�>�EAJ*��h.N���w,.�%	�D��<�)�h�Ǿ���O8�&����;V^�.k���@�!����<��u����5�8�%�=,^� ��-�K���(����ڢh��_��L��(���b��'��$O4����K�P�`�G�����V��*��?���+B�Ts�i�O/��6�=��v��m�h��X�8K:�*��������m)X��ѐ�4�+�=P��L�x7�(��L�ۣ�� nX�Hf?_\&2�d�!�Ybs��a6B�M�k1E���(�MC�F�%1���
��f�;
���٬asL�h�t�s*��g�7�C�j���+!*�ъ$_6���DX�xp�h/E�MF�ͪ�wQ���i��
N�:�C���8m���9eH���)Q�$I;�L,g�Y"|=�� �I�Yb6maw�I��B�id�������0�M}.jw�t'
Z%�UI�"��Jk-�]~y�q3i}�6I�uI�T5��/yw�$�̹��qZH�šmVa�Ͷ�(��U�\L��Z%��*O�/��<�
�`��yY�`
+`��j���U�y�j-k%e�y�4��E�2`Y(�@�fu+���$a�AWZ$�ֿV�諹�����O({�
�dׁŝ��w�L+ؖ�@�I�F�4�t���Ѕe��;!�
f�D0�U]ፐ�B�����"a8�M�q�d(���8N���Wn*J�/Vmsq�|�#��?F�@�Ép`v���J*��w��J O&�B��� SO�|��v޽`�w�S^m�r����S;�<�ae��S�mƨüB���xw�'�ˠL;I�xH�È���F�q�@K��M%���0�(��uI�n�Bkh���H�����c�\0��D�KO��m-�C�8!��7��,�H�%f�}�l��>�vܤ�bb�6xk-�	��c"����Hi�Q����	UnF��0�t�N�F���_���a�^�}h��'Z���3
���C�Pnx;��JPۣ[��~�L�o�!}i �P>����+� �$p����l��G��x�ؔMP�S���P|�K���!#.M6�@���H�:�;�!u	?�-٩.��,��B�x	eKh��6�H���T��B�G���ꇀ;�zR~	Lvk�"�*���N�;����>ܩ!�,�8��`�7@�z?޹��]_,�Ɏ�
w�ޑ�zN��{Hu�4�::%���(�Ty�PX����N:���<�����U�S;�T�#����o�.~[,��p��l��#�Xr�2UȀL,yK��D�
���n���|�K^JE��2�Ƨ :i��X/�R��p�����|�d.�Ħ��u��%���K�Z���U����Z`��Y�%��U��5����!\ڜ<|A`{x�!�u�x��=�2����Ǔ�k��SA,@oW�D�Z�{���z�`ea`������óB��Gm"L΃;d>� �V;�i�`�.� �y�����nb�
��Jh%y��]�ב�UJ�,j�?�r�*���޺%�:�^ŐO=���O�-����X���k|��{M'?��q��C�$��t>��.cSV�)K��K6'��jp&�!Un�>��o��2�Lְ*R36}�?v�"雁��M��>��:�q��A����G٩�>�f���\6�0yO3E3��(�"���"���"\�($=:p�O ُ�&��Q��y���D�^�j�`��O����Z�-�w��Js�E:�s��z�5�E�����8A���(��']��6�"��\z��,�@�c��B�L�=�&
��㍂'ڛ�._^���f�밼���;]��.�Mo��JA�3}Fz����g1�Ա�|:4�{�����<���A���m\�W��:�/ȯdS�U�Wф
�;a8��@��Ԃ�x#|s
f�0�`r�M��;*��A�T"���{�;K����a�A1�R0Uomj�a�a�a�a�a�a�a�a�a�a�a�a5��-�	�1    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/player.png-2dd0af52de4b213777cd8c9df94c0978.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://player.png"
dest_files=[ "res://.import/player.png-2dd0af52de4b213777cd8c9df94c0978.stex" ]

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
          GDST�   �           �  PNG �PNG

   IHDR   �   �   ��A>   sRGB ���  �IDATx���o��?gf׻�KBJ��py \�T^��P6TQ!�"�AZH�
/�����"Q��D�4F�8�%Q���C�%!/!	�r#vb��;s�03���8n�眙��H�ݙ���;����3�s�`0��`0��`0��`0��`0��`0��`@�v@'k�˖mV���8[6�ݰ�}��ߐt�����t���M0��:6�ͯ�wH۲tk�%d���m��.-��~�m�%�$��S��N0ǹ&L��'������P�i�
ۗ �N�<:���1�$�?,F!Y0�;} �2ޒs�����XF	2DD0��3���.,�`�\\Tf09엒/]�ւ=�g���`B6	}�b��#��ϝ׫�F���}��!���N^蕰�`��j�]��t�)`0��i@ �������������{�B)���@0�2��C���*F��-H�vI_3���`Gx'�"^�m��>�"Y�<\,�+�9���}��F�-K2����@������$e�:�h�������3.U���|�6y�41F��P����>%���;wF�/��
DE�掎^^�5�H�?>�Ga�b9�}-���l[�̷sa��ZY�P�5��/��.��bk���Y��+J=l��b+xY0�Y�$� d.��f��<�}?v��׳�TOk-�k�<���îd0P0r�ٹpA�z�=c�m2�aV��SC��[�\�l	�ɯX �Y����e��L�$+dF0����4��z�h.�H>�'T����DE�9p	��%�E���L��zwR)U�=޶B�����k�
���N	�1~|K�m�؉��og&Ì5j �o=�in�+�}�p�]aW���C�X��v����T�M�]6� ��v,��g���,�p�t�U0���5�Kl��z����%�u�\ə����U��s�jI��{ݿ�5r��^rђ��w5t69T�	8г�
@��:�O��A=���Ūϙ�е ʎ'��%U*�����b�������Ƅw;!,�h��V���=s��,;���!�^�[�B�� �b�CS{F{�"�Y�	���&;t���5�?�(�����n�Y�'�^ڳ�=��
n�c9���/�k�rOk�=R!/bĒļ��y��T.�*u�ۙZe���>R�K��n>/�86�M�WZ3L��@xI�y`>�	��lz�&](k���=#��� �d������+��&��pgz'k6��Krl6Ea�.�U�i�@ѱg���|Pi����&<(���!�\>!y0X�\oQ�����u���+W��]����uZ�P�:��*IJn6b9w\�:�B�}e����0�<8�1�i��-Z~��{~/)�i�M	�X���6�$p���o�p����{J�TI�����1T��L8��2��Ta��qae� �*Pz��q��=��i�S�F��>�֮�*�1�"�T�mC���Y��h����eӭiۜ+���
�����`�r\��͹�t��2�*i�:�%�/�b�,!,���5)߈L=È��F0���c��`�~w�E�yd�6�J��������zI~�*xÚf�N��J,��[�t�Qio.�:��VIVk�e.���K�Qe/U�$�3f��c��`:x	�&ÏA*~�Cu�I��\D(�i��q[S�i��/�%��J{�o>�3�(��2��6�6�x��f�1�f�V��S�m���x�J$�Ҷ9g���c:�I݄-�7iۜC(�e��ށ�+�li��]�8M�s�#������t{٩�|�j�����m��櫏e���jٴ+m�s��.>SmS�k&�lM��sÏ�!�v�
&���T�mG�9��Z�Ƶ�E��e�
��;��e��"�ZBrJ�����nH����96��1��m�]��U�X<�l��F�}�B	�*�톄w�Q0T�s`�O%�6�����S]��f >,���p��F��	��O/��V�aZ������03~��oP]/髒�>Ḅ���3$<�ŸΆ���>}�e�D���a�i�H�/a9�vv�_A�(@�l&�A]6��V?r���$u�z�W,��_B�_��.]�W�K��c35C��<�2������ェ�a��d��ェN��DI�+�������#٠ڟ����@�NK�h�0�����W�z�F�` KÍj{qeh��  ~��\����{���1��@���dh��s$��>#[X,Çk �a�kђ꿘�3�8r�v~�vޒ*%����ُK��:�����õ�}���y����)�>�ͣ����,�	�Z��3���=:KU��N5��(uJ/g�2�� BC�d���A, A��7����~��9�u�_v��@C�(�v������7��c�B�kن>���n��L'�藬O�j�=����g�k�\������zOR�ő�kwuvT�*�������C��8U��0C��lb8��N�g�ޥ�;�+����Q��4�2�3MV���7�tb@NP��:<@�����xxZ�$�l3;b��	`�]�(�/�z_<�7e��������Q����O���h�͖X ���6("b�����	�k�n��
�~e���H�7FX��ːxF�k����dӫ}���ţb�T�?�)�.�-�g\����|�<gYlj����F虖��_������S�m�|��	��P���,��M.yVh�^¾�	6vx�u� ��ڟ$�~��X��O�=ѧ��C�7�_i��p�܂���}�|5^r���7$o�vMLx�hB�N �F�ɹ���q*��e��D���!~rr����+%+m���M$�uv
��b��P���"�&�e ���)ȗ�!�b���W/�F������V\��b�\�� ze�c�~)��o��|����D�_�DS�5n�P�$�O�C��HT8a���I�26h�X���;�.�Y�!Avʅт��h��c7:Ĺe��X�[3ި��|{bͣ�ot��2QFL0�*��`*C$	��&`����(E���[�s6�D�?	P��7�(~�_�W��oH8�0�	ج�y��i������L[O�]�҆��`0��`0��`0��`0��`0��`0��`8��Z����a    IEND�B`�            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/player.svg-6d2d65638c721fdbfc24387a7aa9f5c1.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://player.svg"
dest_files=[ "res://.import/player.svg-6d2d65638c721fdbfc24387a7aa9f5c1.stex" ]

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
          [gd_scene load_steps=5 format=2]

[ext_resource path="res://wall.png" type="Texture" id=1]
[ext_resource path="res://goal.png" type="Texture" id=2]

[sub_resource type="ConvexPolygonShape2D" id=3]
points = PoolVector2Array( 140, 140, 0, 140, 0, 0, 140, 0 )

[sub_resource type="TileSet" id=1]
0/name = "Goal"
0/texture = ExtResource( 2 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 140, 140 )
0/tile_mode = 0
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": null,
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
0/z_index = 0
1/name = "Wall"
1/texture = ExtResource( 1 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 0, 0, 140, 140 )
1/tile_mode = 0
1/occluder_offset = Vector2( 0, 0 )
1/navigation_offset = Vector2( 0, 0 )
1/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 3 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
1/z_index = 0

[node name="StageOne" type="TileMap"]
position = Vector2( 200, 240 )
tile_set = SubResource( 1 )
cell_size = Vector2( 140, 140 )
format = 1
GDST�   �           �  PNG �PNG

   IHDR   �   �   ��A>   sRGB ���  oIDATx���1�0��$����P�����3�,x�|����0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�}d|�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/wall.png-e3261c66ad83b71f524576fb4f3c7b5b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://wall.png"
dest_files=[ "res://.import/wall.png-e3261c66ad83b71f524576fb4f3c7b5b.stex" ]

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
GDST�   �           �  PNG �PNG

   IHDR   �   �   ��A>   sRGB ���  oIDATx���1�0��$����P�����3�,x�|����0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�!1�aHCbÐ��0$�}d|�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/wall.svg-e0c7620cc03d5242e3aa9a9f7405050f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://wall.svg"
dest_files=[ "res://.import/wall.svg-e0c7620cc03d5242e3aa9a9f7405050f.stex" ]

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
[remap]

path="res://GameManager.gdc"
          [remap]

path="res://Goal.gdc"
 [remap]

path="res://Main.gdc"
 [remap]

path="res://Player.gdc"
               [remap]

path="res://PossibleKey.gdc"
          [remap]

path="res://PossibleSpots.gdc"
        [remap]

path="res://StageManager.gdc"
         [remap]

path="res://TimeLabel.gdc"
            �PNG

   IHDR   @   @   �iq�   sRGB ���  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
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
�?���{�    IEND�B`�          ECFG      _global_script_classes�                     class         PossibleKey       language      GDScript      path      res://PossibleKey.gd      base      MarginContainer    _global_script_class_icons$               PossibleKey           application/config/name         Mad Dash   application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     autoload/GameManager          *res://GameManager.gd      display/window/size/width           display/window/size/height      �     display/window/stretch/mode         2d     display/window/stretch/aspect         keep   input/g_restartd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_clear_color      ���=���=���=  �?)   rendering/environment/default_environment          res://default_env.tres               