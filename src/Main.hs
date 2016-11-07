import System.Environment

hello :: Name -> String
hello (First "John") = "We don't talk."
hello (Last "Anthony") = "We don't talk."
hello name =
  case name of
    First n -> "Hello, " ++ n ++ ", nice first name."
    Last n -> "Hello, " ++ n ++ ", sorry about the last name."

data Name
  = First String
  | Last String

main = putStrLn $ hello $ First "Anthony"
