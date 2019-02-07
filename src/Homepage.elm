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
        , Html.p [] [ Html.text "In Euclidean geometry, the fifth postulate is a distinctive axiom."]
        , Html.p [] [ Html.text "For long times, mathematicians sought to prove the fifth postulate assuming the four that precede it."]
        , Html.p [] [ Html.text "This was futile, for centuries later other geometries were discovered, geometries in which the fifth postulate is false."]
        , Html.p [] [ Html.text "Daan van Berkel, and his company Fifth Postulate, offer you the same insight. Detecting hidden assumptions that hamper growth and offering changes for improvement."]
        ]
