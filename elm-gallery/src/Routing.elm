module Routing exposing (..)

import Navigation exposing (Location)
import UrlParser exposing (..)
import Images.Models exposing (ImageId)


type Route
    = HomeRoute
    | ImageRoute ImageId
    | NotFoundRoute


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map HomeRoute top
        , map ImageRoute (s "image" </> int)
        ]


parseLocation : Location -> Route
parseLocation location =
    parseHash matchers location
        |> Maybe.withDefault NotFoundRoute


imagePath : ImageId -> String
imagePath id =
    "#/image/" ++ (toString id)
