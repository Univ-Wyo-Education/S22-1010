import words.pick_word
import display.display

# words.pick_words - pickSecretWord
#            showResults ()
#        dead = guessLetter ( opt )

done = False
print ( "=> ", end="" )
cmd = input()
cmd_list = cmd.split()
ww = words.pick_word.Word()
ww.pickSecretWord ( 'init' )
while not done :

    ww.showResults ()

    if len(cmd_list) == 0 :
        x = 1

    elif cmd_list[0]  == 'help':
        print ( """
Hangman Help

A word has been picked you get to gess what it is one letter
at a time.  If your guess is wrong then you complete one of the
steps of the man.  If the man hangs that is a loss.

If you guess all the letters in the word then you win.

To quit enter 'bye'.

Commands
  guess <letter>
  bye
  new
  help
  <letter>
""" )


    elif cmd_list[0] == 'bye':
        print ( "Thanks for playing... bye..." )
        done = True

    elif cmd_list[0] == 'new':
        ww.pickSecretWord ( 'again' )

    elif ( cmd_list[0] == 'guess' and len(cmd_list) == 2 ) or len(cmd_list) == 1:
        if len(cmd_list) > 1 :
            opt = cmd_list[1]
        else :
            opt = cmd_list[0]
        if ww.AlreadyPicked ( opt ):
            print ( "You already picked {}".format(opt) )
        else:
            dead = ww.guessLetter ( opt )
            if dead :
                ww.showResults ()
                done = ww.pickSecretWord ( 'again' )

    else:
        print ( """I did not understand {}
Try
  guess <letter>
  bye
  new
  help
  <letter>
""".format(cmd) )

    # See if we are done - to exit loop 
    # If Not done , then prompt for next loop's command.
    if not done :
        print ( "=> ", end="" )
        cmd = input()

