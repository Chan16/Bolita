VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7485
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   9525
   LinkTopic       =   "Form1"
   Picture         =   "Form1.frx":0000
   ScaleHeight     =   7485
   ScaleWidth      =   9525
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   30
      Left            =   7440
      Top             =   3240
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   30
      Left            =   7440
      Top             =   2640
   End
   Begin VB.CommandButton Command2 
      Caption         =   "PAUSA"
      Height          =   1095
      Left            =   4560
      TabIndex        =   1
      Top             =   2520
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "INICIO"
      Height          =   975
      Left            =   1680
      TabIndex        =   0
      Top             =   2640
      Width           =   2055
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H00400000&
      FillStyle       =   0  'Solid
      Height          =   1095
      Left            =   120
      Shape           =   2  'Oval
      Top             =   120
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
Timer1.Enabled = True
End Sub

Private Sub Command2_Click()
Timer1.Enabled = False
End Sub


Private Sub Timer1_Timer()
Shape1.Top = Shape1.Top + 150
If Shape1.Top > 6000 Then
Shape1.Top = 6000
Shape1.Left = Shape1.Left + 150
If Shape1.Left > 8040 Then
Shape1.Left = 8040
Timer1.Enabled = False
Timer2.Enabled = True
End If
End If
End Sub

Private Sub Timer2_Timer()
Shape1.Top = Shape1.Top - 90
If Shape1.Top < 120 Then
Shape1.Top = 120
Shape1.Left = Shape1.Left - 150

End If
End Sub
