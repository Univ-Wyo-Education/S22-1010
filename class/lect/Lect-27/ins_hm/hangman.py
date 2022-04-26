import words.pick_word
import display.display

# Setup
done = False
print ( "=> ", end="" )
cmd = input()
cmd_list = cmd.split()
art = display.display.Display()
ww = words.pick_word.Word()
ww.pickSecretWord()

while not done :

    n = ww.nMistakes()
    art.show_man ( n )

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
  bye
  new
  help
  hint
  <letter>
""" )


    elif cmd_list[0] == 'bye':
        print ( "Thanks for playing... bye..." )
        done = True

    elif cmd_list[0] == 'new':
        ww.pickSecretWord()

    elif cmd_list[0] == 'hint':
        ww.getHint()
        ww.showResults ()

    elif len(cmd_list) == 1 and len(cmd_list[0]) == 1 :
        opt = cmd_list[0]
        if ww.AlreadyPicked ( opt ):
            print ( "You already picked {}".format(opt) )
            if ww.youWon():
                done = ww.pickSecretWord ()
        else:
            dead = ww.guessLetter ( opt )
            ww.showResults ()
            if dead :
                print ( "The animal was: {}".format( ww.getWord() ) ) 
                ww.pickSecretWord ()
            elif ww.youWon():
                ww.pickSecretWord ()

    else:
        print ( """I did not understand {}
Try
  bye
  new
  help
  hint
  <letter>
""".format(cmd) )

    # See if we are done - to exit loop 
    # If Not done , then prompt for next loop's command.
    if not done :
        print ( "=> ", end="" )
        cmd = input()
        cmd_list = cmd.split()

