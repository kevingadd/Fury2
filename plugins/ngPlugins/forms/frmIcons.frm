VERSION 5.00
Object = "{396F7AC0-A0DD-11D3-93EC-00C0DFE7442A}#1.0#0"; "vbalIml6.ocx"
Begin VB.Form frmIcons 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Icon Container Form"
   ClientHeight    =   540
   ClientLeft      =   45
   ClientTop       =   300
   ClientWidth     =   2160
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   540
   ScaleWidth      =   2160
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Visible         =   0   'False
   Begin vbalIml6.vbalImageList ilIcons 
      Left            =   0
      Top             =   0
      _ExtentX        =   953
      _ExtentY        =   953
      ColourDepth     =   32
      Size            =   10332
      Images          =   "frmIcons.frx":0000
      Version         =   131072
      KeyCount        =   9
      Keys            =   "FOLDER�FOLDER_OPEN�BLOCKING�AREAS�TILES�SPRITES�PROPERTIES�TILESET�OBJECTS"
   End
   Begin vbalIml6.vbalImageList ilMapBig 
      Left            =   540
      Top             =   0
      _ExtentX        =   953
      _ExtentY        =   953
      IconSizeX       =   20
      IconSizeY       =   20
      ColourDepth     =   32
      Size            =   95700
      Images          =   "frmIcons.frx":287C
      Version         =   131072
      KeyCount        =   55
      Keys            =   $"frmIcons.frx":19E70
   End
   Begin vbalIml6.vbalImageList ilContextMenus 
      Left            =   1080
      Top             =   0
      _ExtentX        =   953
      _ExtentY        =   953
      ColourDepth     =   24
      Size            =   43624
      Images          =   "frmIcons.frx":1A077
      Version         =   131072
      KeyCount        =   38
      Keys            =   $"frmIcons.frx":24AFF
   End
   Begin vbalIml6.vbalImageList ilEntityIcons 
      Left            =   1620
      Top             =   0
      _ExtentX        =   953
      _ExtentY        =   953
      IconSizeX       =   20
      IconSizeY       =   20
      ColourDepth     =   32
      Size            =   10440
      Images          =   "frmIcons.frx":24C05
      Version         =   131072
      KeyCount        =   6
      Keys            =   "HIDDEN�VISIBLE�LIGHT OFF�LIGHT ON�LAYER HIDDEN�LAYER VISIBLE"
   End
End
Attribute VB_Name = "frmIcons"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

