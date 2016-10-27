{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLBaseElement
       (js_setHref, setHref, js_getHref, getHref, getHrefUnsafe,
        getHrefUnchecked, js_setTarget, setTarget, js_getTarget, getTarget,
        HTMLBaseElement(..), gTypeHTMLBaseElement)
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
 
foreign import javascript unsafe "$1[\"href\"] = $2;" js_setHref ::
        HTMLBaseElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement.href Mozilla HTMLBaseElement.href documentation> 
setHref ::
        (MonadIO m, ToJSString val) => HTMLBaseElement -> Maybe val -> m ()
setHref self val = liftIO (js_setHref (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"href\"]" js_getHref ::
        HTMLBaseElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement.href Mozilla HTMLBaseElement.href documentation> 
getHref ::
        (MonadIO m, FromJSString result) =>
          HTMLBaseElement -> m (Maybe result)
getHref self = liftIO (fromMaybeJSString <$> (js_getHref (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement.href Mozilla HTMLBaseElement.href documentation> 
getHrefUnsafe ::
              (MonadIO m, HasCallStack, FromJSString result) =>
                HTMLBaseElement -> m result
getHrefUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getHref (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement.href Mozilla HTMLBaseElement.href documentation> 
getHrefUnchecked ::
                 (MonadIO m, FromJSString result) => HTMLBaseElement -> m result
getHrefUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getHref (self)))
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        js_setTarget :: HTMLBaseElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement.target Mozilla HTMLBaseElement.target documentation> 
setTarget ::
          (MonadIO m, ToJSString val) => HTMLBaseElement -> val -> m ()
setTarget self val = liftIO (js_setTarget (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        HTMLBaseElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement.target Mozilla HTMLBaseElement.target documentation> 
getTarget ::
          (MonadIO m, FromJSString result) => HTMLBaseElement -> m result
getTarget self = liftIO (fromJSString <$> (js_getTarget (self)))