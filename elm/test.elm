import Html exposing (..)

-- main = text "hi again"

items : List String
items = [ "one", "two", "three" ]

liItem : String -> Html msg
liItem item = li [] [text item]

-- liItems : String -> List (Html msg)
-- liItems item = 
--   [
--     li [] [text item]
--   , li [] [text item]  
--   ]

liItems : List (Html msg)
liItems = List.map (\s -> liItem s) items

main : Html msg
main = 
  ul []
    <| liItems
    
