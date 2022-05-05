module FooSpec where

import Test.Hspec

spec :: Spec
spec = do
  describe "Foo Spec" $ do
    it "'foo' should equal to 'foo'" $ do
      "foo" `shouldBe` "foo"
