#Persistent
CoordMode, Pixel, Screen
SetDefaultMouseSpeed, 0
SetMouseDelay, -1
WindowClass := "Qt5158QWindowOwnDCIcon"
caminho := A_ScriptDir
niveltransparencia := 1
OnExit("Sair")
Sair()
{
	niveltransparencia := 255
	WinSet, Transparent, %niveltransparencia%, ahk_class Qt5158QWindowOwnDCIcon
	ExitApp
}
WinSet, Transparent, %niveltransparencia%, ahk_class Qt5158QWindowOwnDCIcon

hkexetares := "{f10}"
hkutitotempo := "{f4}"
hkutamotempo := "{f4}"

hkexori := "{f7}"
hkexorigran := "{f6}"
hkexorimas := "{f8}"
 
 
hkutanihur := "{+f1}"
hkfood := "{^f2}"


hkcura := "{f1}"
hkvidapot := "{f2}"

hkmanapot := "{f3}"


hkring := "{3}"
hkcolar := "{5}"
hkmr := "{2}"
hkssa := "{1}"
hkdwarvenring := "{7}"


coordx_exura := 1849
coordy_exura := 148

coordx_vidapot :=1829
coordy_vidapot := 146

coordx_mana := 1836
coordy_mana := 161

coordx_mana_hk := 459   ;Pegar o pixel no meio da imagem de strong mana na sua hotkey
coordy_mana_hk := 897

coordx_modotank := 1813
coordy_modotank := 147

coordx_ssa := 1770
coordy_ssa := 344

coordx_mr := 1766
coordy_mr := 412

coordx_colar_vazio := 1768
coordy_colar_vazio := 344

coordx_ring_vazio := 1769
coordy_ring_vazio := 407



*/
; ======================================================================================================
; ██████████████████████████████████████████████████████████████████████████████████████████████████████
; ███ Referênciando Coordenadas ████████████████████████████████████████████████████████████████████████
; ██████████████████████████████████████████████████████████████████████████████████████████████████████
; ======================================================================================================


;[---------- ATRIBUINDO CORES ÀS VARIÁVEIS ----------]



Loop
{
	If WinActive("ahk_class " . WindowClass)
	{
		if(LigarDesligar=true)
		{
			ImageSearch, x,y,0,0,A_ScreenWidth,A_ScreenHeight, *50 %caminho%\vidaemanacheia.png
			if(ErrorLevel=1)
			{
				MsgBox, VIDA OU MANA NAO ESTA CHEIA !!!
			}
			else
			{
				PixelGetColor, CorVidaCura, %coordx_exura%, %coordy_exura%

				PixelGetColor, CorVidaPot, %coordx_vidapot%, %coordy_vidapot%

				PixelGetColor, CorMana, %coordx_mana%, %coordy_mana%
				
				PixelGetColor, CorVidaModoTank, %coordx_modotank%, %coordy_modotank%
				

		
				break
			}
		}
	}	
}


Loop
{
	If WinActive("ahk_class " . WindowClass) || WinActive("ahk_class " . WindowClass1)
	{
		if(LigarDesligar=true)
		{
			ImageSearch, x_ssa,y_ssa,0,0,A_ScreenWidth,A_ScreenHeight, *50 %caminho%\iconebless.png
			if(ErrorLevel=0)
			{
				a1 := 20
				b1 := 20
				c1 := 80
				d1 := 200
				x1_ssa := x_ssa - a1
				y1_ssa := y_ssa - b1
				x2_ssa := x_ssa + c1
				y2_ssa := y_ssa + d1
				
				ImageSearch,x,y,x1_ssa,y1_ssa,x2_ssa,y2_ssa, *100 %caminho%\ssaon.png
				if(ErrorLevel=1)
				{
					MsgBox, SSA NAO EQUIPADO !
				}
				else
				{
					ImageSearch,x,y,x1_ssa,y1_ssa,x2_ssa,y2_ssa, *100 %caminho%\mron.png
					if(ErrorLevel=1)
					{
						MsgBox, MIGHT RING NAO EQUIPADO !
					}
					else
					{
						PixelGetColor, CorSSA, %coordx_ssa%, %coordy_ssa%
						
						PixelGetColor, CorMR, %coordx_mr%, %coordy_mr%
						
						Break
					}
				}	
			}
			else
			{
				ImageSearch, x_ssa,y_ssa,0,0,A_ScreenWidth,A_ScreenHeight, *50 %caminho%\iconebless1.png
				if(ErrorLevel=0)
				{
					a1 := 20
					b1 := 20
					c1 := 80
					d1 := 200
					x1_ssa := x_ssa - a1
					y1_ssa := y_ssa - b1
					x2_ssa := x_ssa + c1
					y2_ssa := y_ssa + d1
					
					ImageSearch,x,y,x1_ssa,y1_ssa,x2_ssa,y2_ssa, *100 %caminho%\ssaon.png
					if(ErrorLevel=1)
					{
						MsgBox, SSA NAO EQUIPADO !
					}
					else
					{
						ImageSearch,x,y,x1_ssa,y1_ssa,x2_ssa,y2_ssa, *100 %caminho%\mron.png
						if(ErrorLevel=1)
						{
							MsgBox, MIGHT RING NAO EQUIPADO !
						}
						else
						{
							PixelGetColor, CorSSA, %coordx_ssa%, %coordy_ssa%
							
							PixelGetColor, CorMR, %coordx_mr%, %coordy_mr%
							
							Break
						}
					}	
				}
				else
				{
					MsgBox, BLESS NAO ENCONTRADA !!!
				}
			}
		}
	}	
}	


Loop
{
	If WinActive("ahk_class " . WindowClass)
	{
		if(LigarDesligar=true)
		{
			ImageSearch, x_battle,y_battle,0,0,A_ScreenWidth,A_ScreenHeight, *50 %caminho%\iconebattle.png
			if(ErrorLevel=0)
			{
				a := 10
				b := 0
				c := 15
				d := 300
				x1_battle := x_battle - a
				y1_battle := y_battle - b
				x2_battle := x_battle + c
				y2_battle := y_battle + d
				
				break
			}
			else
			{
				MsgBox, BATTLE LIST NAO ENCONTRADA !!!
			}
		}
	}	
}


Loop
{
	If WinActive("ahk_class " . WindowClass)
	{
		if(LigarDesligar=true)
		{
			ImageSearch, x_paralyzebar,y_paralyzebar,0,0,A_ScreenWidth,A_ScreenHeight, *50 %caminho%\soulpoints.png
			if(ErrorLevel=0)
			{
				a2 := 40
				b2 := 0
				c2 := 200
				d2 := 60
				x1_paralyzebar := x_paralyzebar - a2
				y1_paralyzebar := y_paralyzebar - b2
				x2_paralyzebar := x_paralyzebar + c2
				y2_paralyzebar := y_paralyzebar + d2
				
				break
			}
			else
			{
				MsgBox, PARALYZEBAR NAO ENCONTRADA !!!
			}
		}
	}	
}


Loop
{
	If WinActive("ahk_class " . WindowClass)
	{
		if(LigarDesligar=true)
		{
			ImageSearch, x_cdbar,y_cdbar,0,0,A_ScreenWidth,A_ScreenHeight, *50 %caminho%\iconecdbar.png
			if(ErrorLevel=0)
			{
				a1 := 5
				b1 := 10
				c1 := 250
				d1 := 40
				x1_cdbar := x_cdbar + a1
				y1_cdbar := y_cdbar - b1
				x2_cdbar := x_cdbar + c1
				y2_cdbar := y_cdbar + d1
				
				break
			}
			else
			{
				MsgBox, COOLDOWN BAR NAO ENCONTRADA !!!
			}
		}
	}	
}


Loop
{
	If WinActive("ahk_class " . WindowClass)
	{
		if(LigarDesligar=true)
		{
			ImageSearch,x,y,x1_ssa,y1_ssa,x2_ssa,y2_ssa, *50 %caminho%\colarvazio.png
			if(ErrorLevel=0)
			{
				PixelGetColor, CorColarVazio, %coordx_colar_vazio%, %coordy_colar_vazio%
				
				Break
			}
			else
			{
				MsgBox, RETIRE O COLAR !!!
			}
		}
	}	
}


Loop
{
	If WinActive("ahk_class " . WindowClass)
	{
		if(LigarDesligar=true)
		{
			ImageSearch,x,y,x1_ssa,y1_ssa,x2_ssa,y2_ssa, *50 %caminho%\ringvazio.png
			if(ErrorLevel=0)
			{
				PixelGetColor, CorRingVazio, %coordx_ring_vazio%, %coordy_ring_vazio%
				
				Break
			}
			else
			{
				MsgBox, RETIRE O ANEL !!!
			}
		}
	}	
}








utamo_tempo := 1




Loop
{
	If WinActive("ahk_class " . WindowClass) 
    {
		if(LigarDesligar=true)
		{
			PixelGetColor, CorVidaModoTankAtual, %coordx_modotank%, %coordy_modotank%
			if(CorVidaModoTankAtual != CorVidaModoTank)
			{
				PixelGetColor, CorSSAAtual, %coordx_ssa%, %coordy_ssa%
				if(CorSSAAtual != CorSSA)
				{
					Send, %hkssa%
					Sleep, 100
				}
				PixelGetColor, CorMRAtual, %coordx_mr%, %coordy_mr%
				if(CorMRAtual != CorMR)
				{
					Send, %hkmr%
					Sleep, 100
				}
				if(utamo_tempo = 1)
				{
					Send, %hkutamotempo%
					Sleep, 100
					utamo_tempo := 0
				}	
				Send, %hkvidapot%
				Sleep, 100
				Send, %hkcura%
				Sleep, 100
			}
			else
			{
				PixelGetColor, CorVidaAtual, %coordx_vidapot%, %coordy_vidapot%
				if(CorVidaAtual != CorVidaPot)
				{
					Send, %hkvidapot%
					Sleep, 100
					Send, %hkcura%
					Sleep, 100
				}
				else
				{
					PixelGetColor, CorVidaCuraAtual, %coordx_exura%, %coordy_exura%
					if(CorVidaCuraAtual != CorVidaCura)
					{
						Send, %hkcura%
						Sleep, 100
						utamo_tempo := 1
					}
					PixelGetColor, CorManaAtual, %coordx_mana%, %coordy_mana%
					if(CorManaAtual != CorMana)
					{
						ImageSearch, x,y, coordx_mana_hk - 40, coordy_mana_hk - 40, coordx_mana_hk + 40, coordy_mana_hk + 40, *100 %caminho%\strongmana.png
						If(ErrorLevel = 0)
						{
							Send, %hkmanapot%
							Sleep, 100
						}	
					}
						
					PixelGetColor, CorColarAtual, %coordx_ssa%, %coordy_ssa%
					if(CorColarAtual = CorSSA)
					{
						Send, %hkcolar%
						Sleep, 100
					}
					else
					{
						PixelGetColor, CorColarAtual, %coordx_colar_vazio%, %coordy_colar_vazio%
						if(CorColarAtual = CorColarVazio)
						{
							Send, %hkcolar%
							Sleep, 100
						}
					}
					PixelGetColor, CorRingAtual, %coordx_mr%, %coordy_mr%
					if(CorRingAtual = CorMR)
					{
						Send, %hkring%
						Sleep, 100
					}
					else
					{
						PixelGetColor, CorRingAtual, %coordx_ring_vazio%, %coordy_ring_vazio%
						if(CorRingAtual = CorRingVazio)
						{
							Send, %hkring%
							Sleep, 100
						}
					}
				}	
			}		
			ImageSearch,x,y,x1_battle,y1_battle,x2_battle,y2_battle, *50 %caminho%\targeton.png
			if(ErrorLevel=1)
			{
				
				ImageSearch,x,y,x1_battle,y1_battle,x2_battle,y2_battle, *50 %caminho%\targeton1.png
				if(ErrorLevel=1)
				{
					ImageSearch,x,y,x1_paralyzebar,y1_paralyzebar,x2_paralyzebar,y2_paralyzebar, *100 %caminho%\drunk.png
					if(ErrorLevel=0)
					{
						Send, %hkdwarvenring%
						Sleep, 100
					}
					ImageSearch,x,y,x1_paralyzebar,y1_paralyzebar,x2_paralyzebar,y2_paralyzebar, *100 %caminho%\paralize.png
					if(ErrorLevel=0)
					{
						Send, %hkcura%
						Sleep, 100
					}
					else
					{
						ImageSearch,x,y,x1_paralyzebar,y1_paralyzebar,x2_paralyzebar,y2_paralyzebar, *100 %caminho%\utanihur.png
						if(ErrorLevel=1)
						{
							Send, %hkutanihur%
							Sleep, 100
						}
						ImageSearch,x,y,x1_paralyzebar,y1_paralyzebar,x2_paralyzebar,y2_paralyzebar, *100 %caminho%\food.png
						if(ErrorLevel=0)
						{
							Send, %hkfood%
							Sleep, 100
						}
					}
					
				}				
				else
				{			
					ImageSearch,x,y,x1_cdbar,y1_cdbar,x2_cdbar,y2_cdbar, *100 %caminho%\exori.png
					if(ErrorLevel=1)
					{
						ImageSearch,x,y,x1_paralyzebar,y1_paralyzebar,x2_paralyzebar,y2_paralyzebar, *100 %caminho%\utitoon.png
						if(ErrorLevel=1)
						{
							Send, %hkutitotempo%
							Sleep, 100
						}
						else
						{
							Send, %hkexetares%
							Sleep, 100
						}	
						Send, %hkexori%
						Sleep, 100	
					}
					else
					{
						ImageSearch,x,y,x1_cdbar,y1_cdbar,x2_cdbar,y2_cdbar, *100 %caminho%\exorigran.png
						if(ErrorLevel=1)
						{
							ImageSearch,x,y,x1_paralyzebar,y1_paralyzebar,x2_paralyzebar,y2_paralyzebar, *100 %caminho%\utitoon.png
							if(ErrorLevel=1)
							{
								Send, %hkutitotempo%
								Sleep, 100
							}
							else
							{
								Send, %hkexetares%
								Sleep, 100
							}	
							Send, %hkexorigran%
							Sleep, 100
						}
						else
						{
							ImageSearch,x,y,x1_cdbar,y1_cdbar,x2_cdbar,y2_cdbar, *100 %caminho%\exorimas.png
							if(ErrorLevel=1)
							{
								ImageSearch,x,y,x1_paralyzebar,y1_paralyzebar,x2_paralyzebar,y2_paralyzebar, *100 %caminho%\utitoon.png
								if(ErrorLevel=1)
								{
									Send, %hkutitotempo%
									Sleep, 100
								}
								else
								{
									Send, %hkexetares%
									Sleep, 100
								}
								Send, %hkexorimas%
								Sleep, 100
							}
						}
					}				
				}
			}			
			else
			{
				ImageSearch,x,y,x1_cdbar,y1_cdbar,x2_cdbar,y2_cdbar, *100 %caminho%\exori.png
				if(ErrorLevel=1)
				{
					ImageSearch,x,y,x1_paralyzebar,y1_paralyzebar,x2_paralyzebar,y2_paralyzebar, *100 %caminho%\utitoon.png
					if(ErrorLevel=1)
					{
						Send, %hkutitotempo%
						Sleep, 100
					}
					else
					{
						Send, %hkexetares%
						Sleep, 100
					}	
					Send, %hkexori%
					Sleep, 100	
				}
				else
				{
					ImageSearch,x,y,x1_cdbar,y1_cdbar,x2_cdbar,y2_cdbar, *100 %caminho%\exorigran.png
					if(ErrorLevel=1)
					{
						ImageSearch,x,y,x1_paralyzebar,y1_paralyzebar,x2_paralyzebar,y2_paralyzebar, *100 %caminho%\utitoon.png
						if(ErrorLevel=1)
						{
							Send, %hkutitotempo%
							Sleep, 100
						}
						else
						{
							Send, %hkexetares%
							Sleep, 100
						}	
						Send, %hkexorigran%
						Sleep, 100
					}
					else
					{
						ImageSearch,x,y,x1_cdbar,y1_cdbar,x2_cdbar,y2_cdbar, *100 %caminho%\exorimas.png
						if(ErrorLevel=1)
						{
							ImageSearch,x,y,x1_paralyzebar,y1_paralyzebar,x2_paralyzebar,y2_paralyzebar, *100 %caminho%\utitoon.png
							if(ErrorLevel=1)
							{
								Send, %hkutitotempo%
								Sleep, 100
							}
							else
							{
								Send, %hkexetares%
								Sleep, 100
							}
							Send, %hkexorimas%
							Sleep, 100
						}
					}
				}				
			}	
		}
	}		
}


LigarDesligar := true

Insert::
	if (LigarDesligar) {
		LigarDesligar := false
		ToolTip, ------- EK HEALER OFF!
		Sleep 1000
		ToolTip
	}
	else {
		LigarDesligar := true
		ToolTip, ------- EK HEALER ON!
		Sleep 1000
		ToolTip
	}
return