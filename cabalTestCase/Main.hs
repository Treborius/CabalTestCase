module Main where

import HsExport


foreign import ccall safe "cxx.h CallBackHaskell"
    callBackHaskell::IO ()

main :: IO ()
main = do
    callBackHaskell
