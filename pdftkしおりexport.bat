@echo off
rem �G���R�[�h:shiftJIS

echo ---pdftk������export��bat---
@echo.
@echo.


rem �X�N���v�g�i�[�f�B���N�g��
set scriptDir=%~dp0

rem �G�N�X�|�[�gPDF�����

    set /P orignalPdf="��������G�N�X�|�[�g������pdf�������Ƀh���b�N&�h���b�v: "

    rem �t�@�C�����擾
    for %%f in ("%orignalPdf%") do (
    set nameOrignalPdf=%%~nf
    )
    @echo.
    echo �G�N�X�|�[�g��PDF: %nameOrignalPdf%

rem �G�N�X�|�[�gtxt�̖��O���`

    rem �擪�ɕt���镶����
    set mod=bookmarks-

    set outputName=%mod%%nameOrignalPdf%.txt

rem pdftek���s
@echo.
echo pdftek���s
@echo.
PAUSE

@echo on
pdftk "%orignalPdf%" dump_data_utf8 output "%outputName%"
@echo off

@echo.
echo �t�@�C���ۑ���: %scriptDir%%outputName%
@echo.

PAUSE


