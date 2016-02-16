
ns figwheel-workflow.component.module
  :require
    [] reagent.core :as r
    [] figwheel-workflow.style.layout :as la
    [] figwheel-workflow.style.widget :as wi

defn hspace (x)
  [] :div
    {} :style
      merge la/hspace $ {} :width x

defn vspace (x)
  [] :div
    {} :style
      merge la/vspace $ {} :height x

defn get-time-value ()
  .valueOf (new js/Date)

defn hr ()
  [] :div $ {} :style wi/hr

defn vr ()
  [] :div $ {} :style wi/vr

defn imput (props)
  let
      text $ r/atom |
      time $ r/atom 0
      on-change $ :on-change props
      on-local-change $ fn (event)
        on-change (-> event (.-target) (.-value))
        reset! time (get-time-value)
        reset! text (-> event (.-target) (.-value))
    fn (props)
      [] :input $ {}
        :style (:style props)
        :value $ if (> @time (:time props)) @text (:value props)
        :on-change on-local-change
        :placeholder (:placeholder props)

defn icon
  (name title)
    [] :span ({} :class |oi :data-glyph name :title title :aria-hidden true)
  (name title style)
    [] :span ({} :class |oi :data-glyph name :title title :aria-hidden true :style style)
  (name title style on-click)
    [] :span ({} :class |oi :data-glyph name :title title :aria-hidden true :style style :on-click on-click)
