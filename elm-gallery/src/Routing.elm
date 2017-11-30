module Routing exposing (..)

import Navigation exposing (Location)
import UrlParser exposing (..)
import Images.Models exposing (ImageId, PersonId)


type Route
    = HomeRoute
    | ImageRoute ImageId
    | PersonRoute PersonId
    | PersonNotFound
    | ImageNotFound
    | NotFoundRoute


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map HomeRoute top
        , map ImageRoute (s "image" </> int)
        , map PersonRoute (s "person" </> int)
        ]


parseLocation : Location -> Route
parseLocation location =
    parseHash matchers location
        |> Maybe.withDefault NotFoundRoute


imagePath : ImageId -> String
imagePath id =
    "#/image/" ++ (toString id)


personPath : PersonId -> String
personPath id =
    "#/person/" ++ (toString id)
