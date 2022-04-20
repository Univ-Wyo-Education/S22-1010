
import words.pick_word
import display.display

done = False
print ( "=> ", end="" )
cmd = input()
while not done :

    if cmd == 'help':
        print ( """

Hangman Help

A word has been picked you get to gess what it is one letter
at a time.  If your guess is wrong then you complete one of the
steps of the man.  If the man hangs that is a loss.

If you guess all the letters in the word then you win.

To quit enter 'bye'.

""" )


    if cmd == 'bye':
        done = True

    if not done :
        print ( "=> ", end="" )
        cmd = input()

