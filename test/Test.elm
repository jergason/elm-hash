module Test.Hash exposing (main)

import ElmTest exposing (..)
import Hash exposing (hash)


tests : Test
tests =
    suite "Hashing"
        [ test "int" <| assertEqual 4455846369 <| hash <| toString -102433675
        , test "float" <| assertEqual 2088394156 <| hash <| toString 4.32
        , test "rec" <| assertEqual -834399708 <| hash <| toString { name = "Robin", age = "27", male = True }
        , test "tuple" <| assertEqual 1951763061 <| hash <| toString ( "Robin", 27, True )
        , test "ls" <| assertEqual -2040421170 <| hash <| toString [1..6]
        , test "bool" <| assertEqual 220774096 <| hash <| toString False
        ]


main =
    runSuite tests
