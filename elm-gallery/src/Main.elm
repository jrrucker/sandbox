module Main exposing (..)

-- Our Imports

import Messages exposing (..)
import Update exposing (..)
import Models exposing (..)
import Subscriptions exposing (..)
import Navigation exposing (Location)
import View exposing (..)
import Routing


-- Model


init : Location -> ( Model, Cmd Msg )
init location =
    let
        currentRoute =
            Routing.parseLocation location
    in
        ( initialModel currentRoute, Cmd.none )


main : Program Never Model Msg
main =
    Navigation.program Messages.OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
