
m4_include(./../../setup.m4)

# Assignment 13 - Use github.com

All of the code to do this is in the lecture .pdf and in the class notes.


The code to change is near line 647 in pick_word.py

Change:

```
    def guessLetter ( self, letter ) :
        return False
```

To look like this.  The function is near line 647

```
    def guessLetter ( self, letter ) :
        if letter not in self.letters_picked:
            self.letters_picked = self.letters_picked + letter
        if letter in self.word:
            self.n_success += 1
        else:
            self.n_incorrect_letters += 1
        if self.n_incorrect_letters > 8:
            return True
        return False
```


The links to the code are:

1.  [https://github.com/Univ-Wyo-Education/S22-1010/blob/main/class/lect/Lect-27/ins_hm/hangman.py](https://github.com/Univ-Wyo-Education/S22-1010/blob/main/class/lect/Lect-27/ins_hm/hangman.py)
2.  [https://github.com/Univ-Wyo-Education/S22-1010/blob/main/class/lect/Lect-27/ins_hm/words/pick_word.py](https://github.com/Univ-Wyo-Education/S22-1010/blob/main/class/lect/Lect-27/ins_hm/words/pick_word.py)
3. [https://github.com/Univ-Wyo-Education/S22-1010/blob/main/class/lect/Lect-27/ins_hm/display/display.py](https://github.com/Univ-Wyo-Education/S22-1010/blob/main/class/lect/Lect-27/ins_hm/display/display.py)

The class lecture notes - with the detailed walkthrough are:
[https://github.com/Univ-Wyo-Education/S22-1010/blob/main/class/lect/Lect-27/Lect-27.html.pdf](https://github.com/Univ-Wyo-Education/S22-1010/blob/main/class/lect/Lect-27/Lect-27.html.pdf)
