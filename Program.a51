org 0000h
mov R0,#21h

nop

sjmp bas

basla:

	mov 20h,P2
	mov 21h,P0
	
	
	jnb 02h,zorlama
	jb 08h,termik
	jnb 00h,giris
	jnb 01h,cikis
	jb 09h,manac
	jb 0Ah,mankap
	jnb 03h,buzzkap
	jb 0Bh,itb
	jb 0Ch,gtb
	
	
	sjmp basla

zorlama:
	
	setb P2.6
	
	sjmp basla

termik:

	clr P2.4
	clr P2.5
	
	sjmp basla
	
manac:
	
	jb 0Bh,manaclim
	clr P2.5
	setb P2.4
	sjmp basla

manaclim:
	
	clr P2.4
	sjmp basla

mankap:

	jb 0Ch,mankaplim
	clr P2.4
	setb P2.5
	sjmp basla
	
mankaplim:

	clr P2.5
	sjmp basla

giris:
	jb 0Bh,manaclim
	clr P2.5
	setb P2.4
	
	sjmp basla
	
cikis:
	jb 0Ch,mankaplim
	clr P2.4
	setb P2.5
	
	sjmp basla


	
buzzkap:
		
		clr P2.6
		sjmp basla

itb:
	
	clr P2.4
	
	nop
	nop
	nop
	sjmp basla

gtb:

	clr P2.5
	
	nop 
	nop
	nop
	sjmp basla


bas:
	
	clr P2.5
	clr P2.6
	clr P2.4
	sjmp basla
end
