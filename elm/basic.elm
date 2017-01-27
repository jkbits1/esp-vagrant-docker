import Html exposing (..)
import Html.Events exposing (onClick, onInput)
-- import Html.App exposing (program)
import Html.Attributes exposing (placeholder)
import String exposing (split)

type alias Model = {
  csvData : String
}

type Msg = Process | Change String

update : Msg -> Model -> (Model, Cmd Msg)
update msg model  =
  case msg of
    Process -> 
      (model, Cmd.none)
    Change str ->
      ({csvData = str}, Cmd.none)

view : Model -> Html Msg
view model = 
  div []
    [
      h1 [] [text "create csv section"]
    , button [ onClick Process ] [ text "Process" ]
    , input [ placeholder "main csv data", onInput Change ] []
    , text <|  Maybe.withDefault "" ( List.head ( String.split "," model.csvData ) )
    ]

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none    

init : (Model, Cmd Msg)
init = (Model "", Cmd.none)

main = Html.program {
    init = init
  , view = view
  , update = update
  , subscriptions = subscriptions
  }



