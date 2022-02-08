a = "Fox in Socks"
if "Socks" in a :
    print ( "Good! Found '{}' in '{}'".format("Socks","Fox in Socks") )
else:
    print ( "Bad... did not find '{}' in '{}'".format("Socks","Fox in Socks") )

if "Tweetle" in a:
    print ( "'{}' should not be foudn in '{}'".format("Tweetle","Fox in Socks") )
else:
    print ( "This is good! '{}' is not in '{}'".format("Tweetle","Fox in Socks") )
