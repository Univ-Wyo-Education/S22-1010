
class Display:
    ascii_art = [
'''
   +---+
       |
       |
       |
      ===
''',
'''
   +---+
   O   |
       |
       |
      ===
''',
'''
   +---+
   O   |
   |   |
       |
      ===
''',
'''
   +---+
   O   |
  /|   |
       |
      ===
''',
'''
   +---+
   O   |
  /|\  |
       |
      ===
''',
'''
   +---+
   O   |
  /|\  |
  /    |
      ===
''',
'''
   +---+
   O   |
  /|\  |
  / \  |
      ===
''',
'''
   +---+
  (O   |
  /|\  |
  / \  |
      ===
''',
'''
   +---+
  (O)  |
  /|\  |
  / \  |
      ===
''',
'''
   +---+
  (O)  |
  /*\  |
  / \  |
      ===
'''
]

    def __init__(self):
        pass

    def show_man(self, n) :
        if n >= 0 and n < len(self.ascii_art):
            print ( self.ascii_art[n] )
        else:
            print ( "to big" )

# Test Code.

if __name__ == "__main__":
    art = Display()
    print ( "=> ", end="" )
    x = int(input())
    art.show_man ( x )

