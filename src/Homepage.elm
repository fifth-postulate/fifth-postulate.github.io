module Homepage exposing (homepage)

import Html exposing (Html)
import Html.Attributes as Attribute


homepage : Html msg
homepage =
    Html.section [ Attribute.class "content"]
        [ Html.div []
            [ Html.img
                [ Attribute.src "/image/me.jpg"
                , Attribute.alt "Daan van Berkel"
                , Attribute.width 240
                ]
                []
            ]
        ]
