@echo off
rem �G���R�[�h:shiftJIS

echo ---pdftk������import��bat---
@echo.
@echo.

rem �X�N���v�g�i�[�f�B���N�g��
set scriptDir=%~dp0

rem �C���|�[�g��PDF�����

    set /P importedPdf="��������C���|�[�g������pdf�������Ƀh���b�N&�h���b�v: "

    rem �t�@�C�����擾
    for %%f in ("%importedPdf%") do (
    set nameImportedPdf=%%~nf
    )
    @echo.
    echo �C���|�[�g��PDF: %nameImportedPdf%

rem ������txt�����

    set /P bookmarkFile="������txt���h���b�N&�h���b�v: "

    rem �t�@�C�����ƃf�B���N�g���擾
    for %%f in ("%bookmarkFile%") do (
    set bookMarkFileName=%%~nxf
    set bookmarkDir=%%~dpf
    )
    @echo.
    echo ������txt: %bookMarkFileName%

    rem txt�t�@�C���̃f�B���N�g�����X�N���v�g�i�[�f�B���N�g���ƈقȂ�ꍇ�R�s�[
    if not %bookmarkDir%==%scriptDir% (
        copy %bookmarkFile% %scriptDir%
    )

rem �o��pdf�̖��O���`

    rem �擪�ɕt���镶����
    set mod=bookmarked-

    set outputName=%mod%%nameImportedPdf%.pdf

rem pdftek���s
@echo.
echo pdftek���s
@echo.

PAUSE

@echo on
pdftk "%importedPdf%" update_info_utf8 %bookMarkFileName% output %outputName%
@echo off

@echo.
echo �����t�@�C���ۑ���: %scriptDir%%outputName%
@echo.

PAUSE
