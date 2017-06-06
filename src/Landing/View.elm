module Landing.View exposing (view)

import Html exposing (Html, button, div, input, text)
import Html.Attributes exposing (type_, value)
import Html.Events exposing (onClick, onInput)
import Types exposing (Msg(..))


view : Maybe String -> Html Msg
view url_ =
    div
        []
        [ urlInput <| Maybe.withDefault "" <| url_
        , showRadarButton
        ]


urlInput : String -> Html Msg
urlInput url =
    input
        [ type_ "text"
        , value url
        , onInput UpdateUrl
        ]
        []


showRadarButton : Html Msg
showRadarButton =
    button
        [ onClick ShowMockData ]
        [ text "Show mock radar" ]
