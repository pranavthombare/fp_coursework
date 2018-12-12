{-# LANGUAGE DeriveGeneric #-}
import Data.Aeson
import Data.Text
import GHC.Generics

data Person = Person { age :: Int, name :: String } deriving (Generic, Show)

instance FromJSON Person
instance ToJSON Person

person1:: Person
person1 = Person{
				age=26,
				name="John Doe"
			    }

main :: IO ()
main = do
       print $ Data.Aeson.encode person1;
       
   