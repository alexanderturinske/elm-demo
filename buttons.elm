module Buttons exposing (..) --where

import Html exposing (Html, button, div, text)
import Html.App as Html
import Html.Events exposing (onClick)

main =
  -- One has two options, beginnerProgram or program
  -- program is a lot more involved
  Html.beginnerProgram { model = model, view = view, update = update}


-- MODEL

-- First create your model and what needs to be kept track of
type alias Model = Int
model : Model
model =
  0


-- UPDATE

-- Second, define how it is going to change over time with a set of message
type Msg = Increment | Decrement
update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1
    Decrement ->
      model - 1

-- VIEW

-- Third, define what the user will see
view: Model -> Html Msg
view model =
  div []
  [ button [ onClick Decrement ] [ text "-" ]
  , div [] [ text (toString model) ]
  , button [ onClick Increment ] [ text "+" ]
  ]

