module Models exposing (..)

import Images.Models exposing (Image)
import Data.ImageData exposing (..)
import Routing exposing (Route)


type alias Model =
    { images : List Image
    , route : Route
    }


initialModel : Route -> Model
initialModel route =
    { images = images
    , route = route
    }
