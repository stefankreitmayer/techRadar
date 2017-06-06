module Main exposing (main)

import Html exposing (Html)
import Landing.View as LandingView
import Radar.Model exposing (Quadrant(..), Radar, Ring(..))
import Radar.View as RadarView
import Types exposing (AppState(..), Msg(..))


main : Program Never AppState Msg
main =
    Html.program
        { init = init
        , update = update
        , subscriptions = \_ -> Sub.none
        , view = view
        }


init : ( AppState, Cmd Msg )
init =
    ShowPrompt Nothing ! []


update : Msg -> AppState -> ( AppState, Cmd Msg )
update msg appState =
    case msg of
        ShowMockData ->
            ShowRadar mockRadar
                |> noCmd

        UpdateUrl url ->
            ShowPrompt (Just url)
                |> noCmd


noCmd : AppState -> ( AppState, Cmd Msg )
noCmd appState =
    appState ! []


view : AppState -> Html Msg
view appState =
    case appState of
        ShowPrompt url_ ->
            LandingView.view url_

        ShowRadar radar ->
            RadarView.view radar


mockRadar : Radar
mockRadar =
    [ { name = "tech1"
      , ring = Hold
      , quadrant = Tools
      , isNew = False
      , description = "description"
      }
    , { name = "tech2"
      , ring = Hold
      , quadrant = Tools
      , isNew = False
      , description = "description"
      }
    , { name = "tech3"
      , ring = Hold
      , quadrant = Tools
      , isNew = False
      , description = "description"
      }
    , { name = "tech4"
      , ring = Hold
      , quadrant = Tools
      , isNew = False
      , description = "description"
      }
    , { name = "tech5"
      , ring = Hold
      , quadrant = Tools
      , isNew = False
      , description = "description"
      }
    , { name = "tech6"
      , ring = Hold
      , quadrant = Tools
      , isNew = False
      , description = "description"
      }
    , { name = "tech7"
      , ring = Hold
      , quadrant = Tools
      , isNew = False
      , description = "description"
      }
    , { name = "tech8"
      , ring = Hold
      , quadrant = Tools
      , isNew = False
      , description = "description"
      }
    , { name = "tech2"
      , ring = Hold
      , quadrant = Tools
      , isNew = False
      , description = "description"
      }
    , { name = "tech3"
      , ring = Hold
      , quadrant = Tools
      , isNew = False
      , description = "description"
      }
    ]
