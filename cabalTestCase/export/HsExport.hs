{-# LANGUAGE ForeignFunctionInterface #-}
module HsExport where

import Foreign.C.Types
import ExportLib

fibonacci_hs :: CInt -> CInt
fibonacci_hs = fromIntegral . fibonacci . fromIntegral

foreign export ccall fibonacci_hs :: CInt -> CInt
