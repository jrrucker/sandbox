module View exposing (..)

import Models exposing (..)
import Routing
import Messages exposing (Msg)
import Data.ImageData exposing (..)
import Images.Models exposing (Image)
import Images.CardView exposing (..)
import Images.ImageView exposing (..)
import Html exposing (Html, div, text, program)
import Html.Attributes exposing (class)


view : Model -> Html Msg
view model =
    div []
        [ page model ]


page : Model -> Html Msg
page model =
    case model.route of
        Routing.ImageRoute id ->
            case (getImage id) of
                Just image ->
                    imageDetail image

                Nothing ->
                    notFoundView

        Routing.HomeRoute ->
            homeView model

        Routing.NotFoundRoute ->
            notFoundView


imageView : Model -> Html Msg
imageView model =
    (imageView model)


homeView : Model -> Html Msg
homeView model =
    div
        [ class "gallery" ]
        (model.images
            |> List.map (imageCard)
        )


notFoundView : Html Msg
notFoundView =
    div []
        [ text "Image Not Found" ]



-- Helpers


getImage : Int -> Maybe Image
getImage id =
    images
        |> List.filter (\image -> image.id == id)
        |> List.head
