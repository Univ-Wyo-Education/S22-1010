



<style>
.pagebreak { page-break-before: always; }
.half { height: 200px; }
</style>
<style>
.pagebreak { page-break-before: always; }
.half { height: 200px; }
.markdown-body {
	font-size: 12px;
}
.markdown-body td {
	font-size: 12px;
}
</style>


```
  1: import words.pick_word
  2: import display.display
  3: 
  4: # Setup
  5: done = False
  6: print ( "=> ", end="" )
  7: cmd = input()
  8: cmd_list = cmd.split()
  9: art = display.display.Display()
 10: ww = words.pick_word.Word()
 11: ww.pickSecretWord()
 12: 
 13: while not done :
 14: 
 15:     n = ww.nMistakes()
 16:     art.show_man ( n )
 17: 
 18:     ww.showResults ()
 19: 
 20:     if len(cmd_list) == 0 :
 21:         x = 1
 22: 
 23:     elif cmd_list[0]  == 'help':
 24:         print ( """
 25: Hangman Help
 26: 
 27: A word has been picked you get to gess what it is one letter
 28: at a time.  If your guess is wrong then you complete one of the
 29: steps of the man.  If the man hangs that is a loss.
 30: 
 31: If you guess all the letters in the word then you win.
 32: 
 33: To quit enter 'bye'.
 34: 
 35: Commands
 36:   bye
 37:   new
 38:   help
 39:   hint
 40:   <letter>
 41: """ )
 42: 
 43: 
 44:     elif cmd_list[0] == 'bye':
 45:         print ( "Thanks for playing... bye..." )
 46:         done = True
 47: 
 48:     elif cmd_list[0] == 'new':
 49:         ww.pickSecretWord()
 50: 
 51:     elif cmd_list[0] == 'hint':
 52:         ww.getHint()
 53:         ww.showResults ()
 54: 
 55:     elif len(cmd_list) == 1 and len(cmd_list[0]) == 1 :
 56:         opt = cmd_list[0]
 57:         if ww.AlreadyPicked ( opt ):
 58:             print ( "You already picked {}".format(opt) )
 59:             if ww.youWon():
 60:                 done = ww.pickSecretWord ()
 61:         else:
 62:             dead = ww.guessLetter ( opt )
 63:             ww.showResults ()
 64:             if dead :
 65:                 print ( "The animal was: {}".format( ww.getWord() ) ) 
 66:                 ww.pickSecretWord ()
 67:             elif ww.youWon():
 68:                 ww.pickSecretWord ()
 69: 
 70:     else:
 71:         print ( """I did not understand {}
 72: Try
 73:   bye
 74:   new
 75:   help
 76:   hint
 77:   <letter>
 78: """.format(cmd) )
 79: 
 80:     # See if we are done - to exit loop 
 81:     # If Not done , then prompt for next loop's command.
 82:     if not done :
 83:         print ( "=> ", end="" )
 84:         cmd = input()
 85:         cmd_list = cmd.split()
 86: 

```

