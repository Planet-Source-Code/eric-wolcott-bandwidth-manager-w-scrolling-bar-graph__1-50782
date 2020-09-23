VERSION 5.00
Begin VB.Form frmBandwidth 
   BackColor       =   &H00F0F0F0&
   Caption         =   "Bandwidth Monitor"
   ClientHeight    =   5415
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5685
   Icon            =   "frmBandwidth.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5415
   ScaleWidth      =   5685
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox PIC1 
      BackColor       =   &H00F0F0F0&
      Height          =   1750
      Left            =   0
      ScaleHeight     =   113
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   375
      TabIndex        =   17
      Top             =   0
      Width           =   5685
      Begin VB.Timer tmrReset 
         Interval        =   2000
         Left            =   2220
         Top             =   225
      End
      Begin VB.Timer tmrUpdate 
         Interval        =   100
         Left            =   1740
         Top             =   225
      End
      Begin VB.Timer Timer1 
         Interval        =   2000
         Left            =   195
         Top             =   315
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00F0F0F0&
      Height          =   2040
      Left            =   0
      TabIndex        =   9
      Top             =   1710
      Width           =   5700
      Begin VB.ComboBox cboConnectionType 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   330
         Left            =   60
         Style           =   2  'Dropdown List
         TabIndex        =   10
         Top             =   1155
         Width           =   5460
      End
      Begin VB.Label lblType 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "TokenRing "
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   465
         Left            =   1395
         TabIndex        =   16
         Top             =   1560
         Width           =   4290
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   " Connection type :"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   0
         TabIndex        =   15
         Top             =   1560
         Width           =   1650
      End
      Begin VB.Label lblDownloadSpeedTop 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Top download speed:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Left            =   45
         TabIndex        =   14
         Top             =   150
         Width           =   1545
      End
      Begin VB.Label lblUploadSpeedTop 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Top upload speed:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Left            =   45
         TabIndex        =   13
         Top             =   390
         Width           =   1335
      End
      Begin VB.Label lblDownloadSpeedAverage 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Average download speed:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Left            =   60
         TabIndex        =   12
         Top             =   645
         Width           =   1890
      End
      Begin VB.Label lblUploadSpeedAverage 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Average upload speed:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Left            =   60
         TabIndex        =   11
         Top             =   885
         Width           =   1680
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00F0F0F0&
      Height          =   1770
      Left            =   0
      TabIndex        =   0
      Top             =   3660
      Width           =   5700
      Begin VB.Label lblUSpeed 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Label7"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   345
         Left            =   1515
         TabIndex        =   8
         Top             =   1305
         Width           =   1650
      End
      Begin VB.Label lblDSpeed 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Label6"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   345
         Left            =   1515
         TabIndex        =   7
         Top             =   945
         Width           =   1650
      End
      Begin VB.Label lblSent 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Label1"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   345
         Left            =   1515
         TabIndex        =   6
         Top             =   585
         Width           =   1650
      End
      Begin VB.Label lblRecv 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Label1"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   345
         Left            =   1515
         TabIndex        =   5
         Top             =   225
         Width           =   1650
      End
      Begin VB.Label Label4 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   " Download speed"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   345
         Left            =   60
         TabIndex        =   4
         Top             =   945
         Width           =   1440
      End
      Begin VB.Label Label3 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   " Sent bytes"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   345
         Left            =   60
         TabIndex        =   3
         Top             =   585
         Width           =   1440
      End
      Begin VB.Label Label2 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   " Received bytes"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   345
         Left            =   60
         TabIndex        =   2
         Top             =   225
         Width           =   1440
      End
      Begin VB.Label Label5 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   " Upload speed"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   345
         Left            =   60
         TabIndex        =   1
         Top             =   1305
         Width           =   1440
      End
   End
End
Attribute VB_Name = "frmBandwidth"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Private m_objIpHelper As CIpHelper
Private TransferRate As Single
Private TransferRate2 As Single
Private LastMoment As Date, LastRecvBytes As Long, LastSentBytes As Long
Private Rcv(1 To 85) As Double
Private Sent(1 To 85) As Double
Private DownloadSpeedTop As Double, UploadSpeedTop As Double, DownloadSpeedAverage As Double, UploadSpeedAverage As Double
Private LoggingInterval As Long, LastLogged As Date
Dim CL As New Collection
Dim DRW As New clsLineGraph

Private Sub Form_Load()
Me.Caption = "Zach" & vbNewLine & "Szafran"
    Do: CL.Add 0: Loop While CL.Count < 100
    Set DRW.PictureBox = PIC1
    Set DRW.DataCollection = CL
    DRW.PicBackground = vbBlack
    DRW.PicForeground = vbGreen
    DRW.BorderColor = vbRed
    DRW.BorderSize = 0
    DRW.GridColor = &H808000
    DRW.GridVisible = True
LastMoment = Now
LastLogged = Now
LoggingInterval = 60
Set m_objIpHelper = New CIpHelper
Dim a As Long
For a = 1 To m_objIpHelper.Interfaces.Count
    cboConnectionType.AddItem m_objIpHelper.Interfaces(a).InterfaceDescription & " "
Next
If Val(GetSetting(App.Title, "Setting", "Connection", 0)) + 1 <= cboConnectionType.ListCount Then
    cboConnectionType.ListIndex = Val(GetSetting(App.Title, "Setting", "Connection", 0))
Else
    cboConnectionType.ListIndex = 0
End If
End Sub

Private Sub Timer1_Timer()
If DownloadSpeedTop <> 0 Then
DownloadSpeedTop = 0
UploadSpeedTop = 0
Else
Timer1.Enabled = False
End If
End Sub

Private Sub tmrUpdate_Timer()
On Error Resume Next

'If DateDiff("s", LastMoment, Now) < 1 Then Exit Sub

tmrUpdate.Enabled = False
    
Dim objInterface As CInterface
Set objInterface = m_objIpHelper.Interfaces(cboConnectionType.ListIndex + 1)

lblType = m_objIpHelper.Interfaces(cboConnectionType.ListIndex + 1).InterfaceDescription & " "

Dim BytesRecv As Long, BytesSent As Long
BytesRecv = m_objIpHelper.BytesReceived
BytesSent = m_objIpHelper.BytesSent

DoEvents
Dim DS As Long, US As Long
DS = BytesRecv - LastRecvBytes
US = BytesSent - LastSentBytes
If DownloadSpeedTop < DS Then DownloadSpeedTop = DS
If UploadSpeedTop < US Then UploadSpeedTop = US
DoEvents

lblRecv.Caption = Format(BytesRecv / 1024, "###,###,###,###,##0 KB")
lblSent.Caption = Format(BytesSent / 1024, "###,###,###,###,##0 KB")

DownloadSpeedAverage = (DownloadSpeedAverage + DS) / 2
UploadSpeedAverage = (UploadSpeedAverage + US) / 2
lblDownloadSpeedTop = "Top download speed: " & Format(DownloadSpeedTop / 1024, "###,###,###,###,#0.#0 Kb/S")
lblUploadSpeedTop = "Top upload speed: " & Format(UploadSpeedTop / 1024, "###,###,###,###,#0.#0 Kb/S")
lblDownloadSpeedAverage = "Average download speed: " & Format(DownloadSpeedAverage / 1024, "###,###,###,###,#0.#0 Kb/S")
lblUploadSpeedAverage = "Average upload speed: " & Format(UploadSpeedAverage / 1024, "###,###,###,###,#0.#0 Kb/S")

Me.Caption = lblDownloadSpeedTop.Caption & vbNewLine & _
                        lblUploadSpeedTop.Caption & vbNewLine & _
                        lblDownloadSpeedAverage.Caption & vbNewLine & _
                        lblUploadSpeedAverage.Caption
CL.Add Int(Format(DownloadSpeedAverage / 1024, "###,###,###,###,#0.#0")) + 5
DRW.Draw

If DS / 1024 < 1 Then
    lblDSpeed = Format(DS, "0 BS ")
Else
    lblDSpeed = Format(DS / 1024, "0.#0 KBS ")
End If
If US / 1024 < 1 Then
    lblUSpeed = Format(US, "0 BS ")
Else
    lblUSpeed = Format(US / 1024, "0.#0 KBS ")
End If

LastRecvBytes = BytesRecv
LastSentBytes = BytesSent
LastMoment = Now

If m_objIpHelper.Interfaces.Count <> cboConnectionType.ListCount Then
    Dim a As Long
    cboConnectionType.Clear
    For a = 1 To m_objIpHelper.Interfaces.Count
        cboConnectionType.AddItem m_objIpHelper.Interfaces(a).InterfaceDescription & " "
    Next
    If Val(GetSetting(App.Title, "Setting", "Connection", 0)) + 1 <= cboConnectionType.ListCount Then
        cboConnectionType.ListIndex = Val(GetSetting(App.Title, "Setting", "Connection", 0))
    Else
        cboConnectionType.ListIndex = 0
    End If
End If
tmrUpdate.Enabled = True
End Sub



