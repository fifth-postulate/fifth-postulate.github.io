module Site exposing (main)

import Browser exposing (Document)
import Homepage exposing (homepage)
import Html exposing (Html)
import Html.Attributes as Attribute


main: Program () Model msg
main =
    Browser.document
        { init = \_ -> init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init : (Model, Cmd msg)
init =
    ({}, Cmd.none)


type alias Model =
    {}


view : Model -> Document msg
view _ =
    { title = "Fifth Postulate"
    , body = [ header, homepage, footer ]
    }


header : Html msg
header =
    Html.section [ Attribute.class "header" ]
        [ Html.h1 [] [ Html.text "Fifth Postulate" ]
        , Html.ul []
            [ Html.li [] [ Html.text "Consultancy" ]
            , Html.li [] [ Html.text "Training" ]
            , Html.li [] [ Html.text "Public Speaking" ]
            ]
        ]


footer : Html msg
footer =
    Html.section [ Attribute.class "footer" ]
        [ Html.dl []
            [ Html.dt [] [ Html.text "KvK" ]
            , Html.dd [] [ Html.text "65044649" ]
            , Html.dt [] [ Html.text "Contact" ]
            , Html.dd [] [ Html.text "info@fifth-postulate.nl" ]
            ]
        ]

update : msg -> Model -> (Model, Cmd msg)
update _ model =
    (model, Cmd.none)


subscriptions: Model -> Sub msg
subscriptions _ =
    Sub.none
