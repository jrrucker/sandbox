module Images.CardView exposing (..)

import Html exposing (Html, div, img, text, a)
import Html.Attributes exposing (src, href, alt, title, class)
import Images.Models exposing (Image)
import Routing exposing (imagePath)


imageCard : Image -> Html msg
imageCard image =
    let
        path =
            imagePath image.id
    in
        a
            [ class "view-image"
            , href path
            ]
            [ div [ class "image" ]
                [ img
                    [ src image.thumbnail
                    , alt image.description
                    , title image.description
                    ]
                    []
                ]
            ]
