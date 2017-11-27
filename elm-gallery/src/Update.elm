module Update exposing (..)

import Routing exposing (parseLocation)
import Messages exposing (Msg)
import Models exposing (Model)
import Images.Models exposing (Image)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Messages.OnLocationChange location ->
            let
                newRoute =
                    parseLocation location
            in
                ( { model | route = newRoute }, Cmd.none )
