Attribute VB_Name = "mdlMain"
'
'    Stub (Fury� Game Creation System Loader Stub)
'    Copyright (C) 2003 Kevin Gadd
'
'    This program is free software; you can redistribute it and/or
'    modify it under the terms of the GNU General Public License
'    as published by the Free Software Foundation; either version 2
'    of the License, or (at your option) any later version.
'
'    This program is distributed in the hope that it will be useful,
'    but WITHOUT ANY WARRANTY; without even the implied warranty of
'    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
'    GNU General Public License for more details.
'
'    You should have received a copy of the GNU General Public License
'    along with this program; if not, write to the Free Software
'    Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
'

Option Explicit

Public Declare Sub PostQuitMessage Lib "user32" (ByVal nExitCode As Long)

Function InIDE() As Boolean
On Error Resume Next
    Err.Clear
    Debug.Assert 1 / 0
    If Err <> 0 Then
        Err.Clear
        InIDE = True
    Else
        Err.Clear
    End If
End Function

Sub Main()
On Error Resume Next
Dim l_strFolder As String
Dim l_bfBrowse As cBrowseForFolder
    ChDrive Left(App.Path, 2)
    ChDir App.Path
    DoEvents
    Load frmNull
    Err.Clear
    If Trim(Command$) = "" Then
        l_strFolder = App.Path
        Set l_bfBrowse = New cBrowseForFolder
        l_bfBrowse.EditBox = True
        l_bfBrowse.FileSystemOnly = True
        l_bfBrowse.InitialDir = App.Path
        l_bfBrowse.UseNewUI = True
        l_bfBrowse.Title = "Select Game"
        l_strFolder = l_bfBrowse.BrowseForFolder
        If Len(Trim(l_strFolder)) <= 0 Then
            End
        End If
        Fury2Load l_strFolder, EM_Normal, frmNull
    Else
        Fury2Load Command$, EM_Normal, frmNull
    End If
    If (Err <> 0) Or (frmNull.Loaded = False) Then
        MsgBox "Unable to load Fury�." & vbCrLf & Engine.LoadError, vbCritical, "Error"
        Unload frmNull
        End
    End If
End Sub
