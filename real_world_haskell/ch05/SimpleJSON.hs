module SimpleJSON
  (
  JValue(..) -- この型とこの型のすべてのデータ構成子の両方をエクスポートするという意味
  , getString
  , getInt
  , getDouble
  , getBool
  , getObject
  , getArray
  , isNull
  ) where -- これより前にモジュールの本体が来ることを示す
-- エクスポートリスト…このモジュールが他のモジュールに公開する名前
-- エクスポートリストを省略するとモジュール内のすべての名前がエクスポートされる

data JValue = JString String
            | JNumber Double
            | JBool Bool
            | JNull
            | JObject [(String, JValue)]
            | JArray [JValue]
              deriving (Eq, Ord, Show)

getString :: JValue -> Maybe String
getString (JString s) = Just s
getString _           = Nothing

getInt (JNumber n) = Just (truncate n)
getInt _           = Nothing

getDouble (JNumber n) = Just n
getDouble _           = Nothing

getBool (JBool b) = Just b
getBool _         = Nothing

getObject (JObject o) = Just o
getObject _           = Nothing

getArray (JArray a) = Just a
getArray _          = Nothing

isNull v            = v == JNull
