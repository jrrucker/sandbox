module Images.ImageView exposing (..)

import Html exposing (Html, div, img, text, p)
import Html.Attributes exposing (src, alt, title, class)
import Images.Models exposing (Image)


imageDetail : Image -> Html msg
imageDetail image =
    div [ class "image-details" ]
        [ img
            [ src image.thumbnail
            , alt image.description
            , title image.description
            ]
            []
        , p []
            [ text image.description ]
        ]
