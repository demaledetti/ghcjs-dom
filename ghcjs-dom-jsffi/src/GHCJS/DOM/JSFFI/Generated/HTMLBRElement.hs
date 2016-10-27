{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLBRElement
       (js_setClear, setClear, js_getClear, getClear, HTMLBRElement(..),
        gTypeHTMLBRElement)
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
 
foreign import javascript unsafe "$1[\"clear\"] = $2;" js_setClear
        :: HTMLBRElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBRElement.clear Mozilla HTMLBRElement.clear documentation> 
setClear ::
         (MonadIO m, ToJSString val) => HTMLBRElement -> val -> m ()
setClear self val = liftIO (js_setClear (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"clear\"]" js_getClear ::
        HTMLBRElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBRElement.clear Mozilla HTMLBRElement.clear documentation> 
getClear ::
         (MonadIO m, FromJSString result) => HTMLBRElement -> m result
getClear self = liftIO (fromJSString <$> (js_getClear (self)))