module DistributionSpec where

import Test.Hspec
import Distribution

spec :: Spec
spec = do
  describe "Distribution spec" $ do
    describe "cutWord acts as a sliding window" $ do
      it "when the window size is greater than the size of the collection, it returns the collection" $ do
        cutWord 5 "word" `shouldBe` ["word"] 

      it "when the window size is equal to the size of the collection, it returns the collection" $ do
        cutWord 4 "word" `shouldBe` ["word"]

      it "when the window size is lesser than the size of the collection, it returns a list of all possibles window position result" $ do
        cutWord 2 "word" `shouldBe` ["wo", "or", "rd"]

      it "regardless the window size, if the collection is empty, the result is empty" $ do
        cutWord 0 "" `shouldBe` []
