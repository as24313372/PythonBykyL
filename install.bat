@ECHO OFF
title �ѥ��q���P���R
set /p var= �п�J�n�έ��Ө����w��(admin=0,user=1,����run=3):
If %var% == 0 goto Admin
If %var% == 1 goto User
If %var% == 3 goto runfile
echo ���~�ƭ�(�Э��s��J�I)
goto end

:Admin
echo �w�ˮM��(admin)...
python -m pip install --upgrade pip
pip install selenium
pip install pandas_datareader
pip install matplotlib
goto runfile

:User
echo �w�ˮM��(user)...
python -m install --user --upgrade pip
pip install --user selenium
pip install --user pandas_datareader
pip install --user matplotlib
goto runfile

:runfile
cls
echo �]maingui��...
python maingui.py
echo �{������
goto end

:end
pause
