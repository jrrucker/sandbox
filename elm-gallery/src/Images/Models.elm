module Images.Models exposing (..)

import Time.Date exposing (Date)


-- Types


type alias ImageId =
    Int


type alias Image =
    { id : Int
    , description : String
    , dateAdded : Date
    , thumbnail : String
    , fullsize : String
    , download : String
    }
