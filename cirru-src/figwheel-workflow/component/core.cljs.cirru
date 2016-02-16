
ns figwheel-workflow.component.core
  :require
    [] reagent.core :as r
    [] figwheel-workflow.component.module :refer
      [] vspace hspace hr vr
    [] figwheel-workflow.style.layout :as la
    [] figwheel-workflow.style.widget :as wi
    [] cljs.core.async :as a :refer
      [] >! <! chan
  :require-macros
    [] cljs.core.async.macros :refer
      [] go

defn page (store)
  [] :div ({}) "|demo"
