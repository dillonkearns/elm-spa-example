module CommentId exposing (CommentId, decoder, toString)

import Json.Decode as Decode exposing (Decoder)
import Json.Encode



-- TYPES


type CommentId
    = CommentId Int



-- CREATE


decoder : Decoder CommentId
decoder =
    Decode.map CommentId Decode.int



-- TRANSFORM


toString : CommentId -> String
toString (CommentId id) =
    String.fromInt id



-- ENCODE


{-| Example

    module Foo exposing (foo)

    foo : Bar.Baz
    foo =
        123

-}
encode : Json.Encode.Value -> String
encode value =
    let
        indentation : Int
        indentation =
            0
    in
    Json.Encode.encode indentation value
