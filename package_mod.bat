@echo off
setlocal

:: /* �������� c4_angel AKA ���Ƕ��� �޸��� ModPackaging: https://github.com/Gibberlings3/ModPackaging ����лԭ���� */

:: /* ��ʼ����Ϸ������Ӧ�����ƣ������޸� */
call "%~dp0..\ModPackaging\utilities\ie_games.bat"

:: /* �޸�һ��4��������ָ��Mod�����֡��汾���������ֺ�ModĿ¼����ǰ3�������Windows�İ�װ������棬����ʹ������ */
set "mod_name=Weapon Style Rebalance"
set "mod_version=v1.0"
set "mod_author=c4_angel"
set "mod_folder=c4WSREE"

:: /* ��������Ŀ��ѡ��Mod�����ݵ���Ϸ�������޸ģ�*/
:: /* %bg1%, %bg2%, %bgt%, %tutu%, %bgee%, %bgiiee%, %iwd1%, %iwdee%, %iwd2%, %iwd2ee%, %iwd-in-bg2%, %pst%, %pstee%, %eet% */
set "compatible_games=%iwdee%, %bgee%, %sod%, %bgiiee%, or %eet%"

:: /* �޸�����5������ƥ�����Mod�� */
:: /* ico_folder��ָ����װ����ʹ�õ�ͼ����ı����λ�� */
:: /* audio_folder��sox��oggdec.exe����Ŀ¼�����Mod������κ���Ƶ�������޸� */
:: /* tispack_folder������Win32��OSX��Unix���ڴ���tilesets����Ŀ¼����Mod������κ�tilesets�������޸� */
:: /* iconv_folder��iconv.exe�Ĵ��Ŀ¼����Mod��֧��EE�򲻰���HANDLE_CHARSETS���ı�����ת���������޸� */
:: /* mod_readme��Mod˵���ĵ������ߵ�ַ��������������ҳ�����ӵȵȣ�Ĭ��ΪTROW����֮��ר����������֮���Ӱ�� */
set ico_folder=%mod_folder%\style
set audio_folder=%mod_folder%\audio
set tispack_folder=%mod_folder%\tiz
set iconv_folder=%mod_folder%\languages\iconv
set mod_readme=https://trow.cc/board/showforum=49

:: /* ����Ϊ��ͬϵͳ�����װ�ļ�����Ϊ0��ʾ����� */
set build_windows=1
set build_osx=1
set build_linux=1

:: /* �����Ƿ�Mod���ļ���Сд��������=1��������=0 */
set lowercase_filenames=0

:: /* ��ʵ������� */
call "%~dp0..\ModPackaging\utilities\complete_packaging.bat"

endlocal
