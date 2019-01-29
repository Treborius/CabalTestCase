module Main where

import Foreign.C.Types

-- if I include the following line then linking works
-- import HsExport

import ExportLib

foreign import ccall safe "cxx.h CallCxx"
    callCxx::CInt-> IO(CInt)

foreign import ccall safe "cxx.h CallBackHaskell"
    callBackHaskell::IO ()

main :: IO ()
main = do
    callCxx(20)
    callBackHaskell
