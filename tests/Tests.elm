module Tests exposing (..)

import Test exposing (..)
import Expect
import Hash exposing (hash)


all : Test
all =
    describe "Hashing"
        [ test "int" <|
            \() -> Expect.equal 4455846369 <| hash <| toString -102433675
        , test "float" <|
            \() -> Expect.equal 2088394156 <| hash <| toString 4.32
        , test "rec" <|
            \() -> Expect.equal -834399708 <| hash <| toString { name = "Robin", age = "27", male = True }
        , test "tuple" <|
            \() -> Expect.equal 1951763061 <| hash <| toString ( "Robin", 27, True )
        , test "ls" <|
            \() -> Expect.equal -2040421170 <| hash <| toString (List.range 1 6)
        , test "bool" <|
            \() -> Expect.equal 220774096 <| hash <| toString False
        ]
