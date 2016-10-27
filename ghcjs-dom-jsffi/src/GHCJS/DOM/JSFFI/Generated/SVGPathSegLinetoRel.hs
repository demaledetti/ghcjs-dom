{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathSegLinetoRel
       (js_setX, setX, js_getX, getX, js_setY, setY, js_getY, getY,
        SVGPathSegLinetoRel(..), gTypeSVGPathSegLinetoRel)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"x\"] = $2;" js_setX ::
        SVGPathSegLinetoRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoRel.x Mozilla SVGPathSegLinetoRel.x documentation> 
setX :: (MonadIO m) => SVGPathSegLinetoRel -> Float -> m ()
setX self val = liftIO (js_setX (self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGPathSegLinetoRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoRel.x Mozilla SVGPathSegLinetoRel.x documentation> 
getX :: (MonadIO m) => SVGPathSegLinetoRel -> m Float
getX self = liftIO (js_getX (self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        SVGPathSegLinetoRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoRel.y Mozilla SVGPathSegLinetoRel.y documentation> 
setY :: (MonadIO m) => SVGPathSegLinetoRel -> Float -> m ()
setY self val = liftIO (js_setY (self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGPathSegLinetoRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoRel.y Mozilla SVGPathSegLinetoRel.y documentation> 
getY :: (MonadIO m) => SVGPathSegLinetoRel -> m Float
getY self = liftIO (js_getY (self))