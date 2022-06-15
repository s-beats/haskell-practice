{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Network.HTTP.Types as HTypes
import qualified Network.Wai as Wai
import qualified Network.Wai.Handler.Warp as Warp

main :: IO ()
main = Warp.run 3000 router

router :: Wai.Application
router req send = case Wai.pathInfo req of
  ["ping"] -> pingHandler req send
  _ -> notFoundHandler req send

pingHandler :: Wai.Application
pingHandler req send = send $ Wai.responseBuilder HTypes.status200 [] "pong"

notFoundHandler :: Wai.Application
notFoundHandler req send = send $ Wai.responseBuilder HTypes.status404 [] "not found"
