{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.XPathEvaluator
       (js_newXPathEvaluator, newXPathEvaluator, js_createExpression,
        createExpression, createExpression_, createExpressionUnsafe,
        createExpressionUnchecked, js_createNSResolver, createNSResolver,
        createNSResolver_, createNSResolverUnsafe,
        createNSResolverUnchecked, js_evaluate, evaluate, evaluate_,
        evaluateUnsafe, evaluateUnchecked, XPathEvaluator(..),
        gTypeXPathEvaluator)
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
 
foreign import javascript unsafe "new window[\"XPathEvaluator\"]()"
        js_newXPathEvaluator :: IO XPathEvaluator

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator Mozilla XPathEvaluator documentation> 
newXPathEvaluator :: (MonadIO m) => m XPathEvaluator
newXPathEvaluator = liftIO (js_newXPathEvaluator)
 
foreign import javascript unsafe "$1[\"createExpression\"]($2, $3)"
        js_createExpression ::
        XPathEvaluator ->
          JSString ->
            Nullable XPathNSResolver -> IO (Nullable XPathExpression)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createExpression Mozilla XPathEvaluator.createExpression documentation> 
createExpression ::
                 (MonadIO m, ToJSString expression) =>
                   XPathEvaluator ->
                     expression -> Maybe XPathNSResolver -> m (Maybe XPathExpression)
createExpression self expression resolver
  = liftIO
      (nullableToMaybe <$>
         (js_createExpression (self) (toJSString expression)
            (maybeToNullable resolver)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createExpression Mozilla XPathEvaluator.createExpression documentation> 
createExpression_ ::
                  (MonadIO m, ToJSString expression) =>
                    XPathEvaluator -> expression -> Maybe XPathNSResolver -> m ()
createExpression_ self expression resolver
  = liftIO
      (void
         (js_createExpression (self) (toJSString expression)
            (maybeToNullable resolver)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createExpression Mozilla XPathEvaluator.createExpression documentation> 
createExpressionUnsafe ::
                       (MonadIO m, ToJSString expression, HasCallStack) =>
                         XPathEvaluator ->
                           expression -> Maybe XPathNSResolver -> m XPathExpression
createExpressionUnsafe self expression resolver
  = liftIO
      ((nullableToMaybe <$>
          (js_createExpression (self) (toJSString expression)
             (maybeToNullable resolver)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createExpression Mozilla XPathEvaluator.createExpression documentation> 
createExpressionUnchecked ::
                          (MonadIO m, ToJSString expression) =>
                            XPathEvaluator ->
                              expression -> Maybe XPathNSResolver -> m XPathExpression
createExpressionUnchecked self expression resolver
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createExpression (self) (toJSString expression)
            (maybeToNullable resolver)))
 
foreign import javascript unsafe "$1[\"createNSResolver\"]($2)"
        js_createNSResolver ::
        XPathEvaluator -> Nullable Node -> IO (Nullable XPathNSResolver)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createNSResolver Mozilla XPathEvaluator.createNSResolver documentation> 
createNSResolver ::
                 (MonadIO m, IsNode nodeResolver) =>
                   XPathEvaluator -> Maybe nodeResolver -> m (Maybe XPathNSResolver)
createNSResolver self nodeResolver
  = liftIO
      (nullableToMaybe <$>
         (js_createNSResolver (self)
            (maybeToNullable (fmap toNode nodeResolver))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createNSResolver Mozilla XPathEvaluator.createNSResolver documentation> 
createNSResolver_ ::
                  (MonadIO m, IsNode nodeResolver) =>
                    XPathEvaluator -> Maybe nodeResolver -> m ()
createNSResolver_ self nodeResolver
  = liftIO
      (void
         (js_createNSResolver (self)
            (maybeToNullable (fmap toNode nodeResolver))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createNSResolver Mozilla XPathEvaluator.createNSResolver documentation> 
createNSResolverUnsafe ::
                       (MonadIO m, IsNode nodeResolver, HasCallStack) =>
                         XPathEvaluator -> Maybe nodeResolver -> m XPathNSResolver
createNSResolverUnsafe self nodeResolver
  = liftIO
      ((nullableToMaybe <$>
          (js_createNSResolver (self)
             (maybeToNullable (fmap toNode nodeResolver))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createNSResolver Mozilla XPathEvaluator.createNSResolver documentation> 
createNSResolverUnchecked ::
                          (MonadIO m, IsNode nodeResolver) =>
                            XPathEvaluator -> Maybe nodeResolver -> m XPathNSResolver
createNSResolverUnchecked self nodeResolver
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createNSResolver (self)
            (maybeToNullable (fmap toNode nodeResolver))))
 
foreign import javascript unsafe
        "$1[\"evaluate\"]($2, $3, $4, $5,\n$6)" js_evaluate ::
        XPathEvaluator ->
          JSString ->
            Nullable Node ->
              Nullable XPathNSResolver ->
                Word -> Nullable XPathResult -> IO (Nullable XPathResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.evaluate Mozilla XPathEvaluator.evaluate documentation> 
evaluate ::
         (MonadIO m, ToJSString expression, IsNode contextNode) =>
           XPathEvaluator ->
             expression ->
               Maybe contextNode ->
                 Maybe XPathNSResolver ->
                   Word -> Maybe XPathResult -> m (Maybe XPathResult)
evaluate self expression contextNode resolver type' inResult
  = liftIO
      (nullableToMaybe <$>
         (js_evaluate (self) (toJSString expression)
            (maybeToNullable (fmap toNode contextNode))
            (maybeToNullable resolver)
            type'
            (maybeToNullable inResult)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.evaluate Mozilla XPathEvaluator.evaluate documentation> 
evaluate_ ::
          (MonadIO m, ToJSString expression, IsNode contextNode) =>
            XPathEvaluator ->
              expression ->
                Maybe contextNode ->
                  Maybe XPathNSResolver -> Word -> Maybe XPathResult -> m ()
evaluate_ self expression contextNode resolver type' inResult
  = liftIO
      (void
         (js_evaluate (self) (toJSString expression)
            (maybeToNullable (fmap toNode contextNode))
            (maybeToNullable resolver)
            type'
            (maybeToNullable inResult)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.evaluate Mozilla XPathEvaluator.evaluate documentation> 
evaluateUnsafe ::
               (MonadIO m, ToJSString expression, IsNode contextNode,
                HasCallStack) =>
                 XPathEvaluator ->
                   expression ->
                     Maybe contextNode ->
                       Maybe XPathNSResolver -> Word -> Maybe XPathResult -> m XPathResult
evaluateUnsafe self expression contextNode resolver type' inResult
  = liftIO
      ((nullableToMaybe <$>
          (js_evaluate (self) (toJSString expression)
             (maybeToNullable (fmap toNode contextNode))
             (maybeToNullable resolver)
             type'
             (maybeToNullable inResult)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.evaluate Mozilla XPathEvaluator.evaluate documentation> 
evaluateUnchecked ::
                  (MonadIO m, ToJSString expression, IsNode contextNode) =>
                    XPathEvaluator ->
                      expression ->
                        Maybe contextNode ->
                          Maybe XPathNSResolver -> Word -> Maybe XPathResult -> m XPathResult
evaluateUnchecked self expression contextNode resolver type'
  inResult
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_evaluate (self) (toJSString expression)
            (maybeToNullable (fmap toNode contextNode))
            (maybeToNullable resolver)
            type'
            (maybeToNullable inResult)))