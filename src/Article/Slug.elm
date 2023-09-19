module Article.Slug exposing (Slug, decoder, toString, urlParser)

import Http exposing (..)
import Json.Decode as Decode exposing (Decoder)
import Url.Parser exposing (Parser)



-- TYPES


type Slug
    = Slug String



-- CREATE


urlParser : Parser (Slug -> a) a
urlParser =
    Url.Parser.custom "SLUG" (\str -> Just (Slug str))


decoder : Decoder Slug
decoder =
    Decode.map Slug Decode.string



--foo =
--    httpErrorToString
-- TRANSFORM


toString : Slug -> String
toString (Slug str) =
    str


type TODO
    = TODO



-- TODO
--httpErrorToString httpError =
--    case httpError of
--        Http.Timeout ->
--            "Timeout"
--
--        BadUrl string ->
--            TODO
--
--        NetworkError ->
--            TODO
--
--        BadStatus response ->
--            TODO
--
--        BadPayload string response ->
--            TODO
--httpErrorToString4 number =
--    case number of
--        1 ->
--            "1"
--
--
--httpErrorToString6 number =
--    case number of
--        ( True, False ) ->
--            "1"


httpErrorToString5 httpError =
    ""
