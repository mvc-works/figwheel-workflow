
ns figwheel-workflow.core
  :require-macros
    [] cljs.core.async.macros :refer
      [] go
  :require
    [] reagent.core :as r
    [] figwheel-workflow.component.core :as component
    [] devtools.core :as devtools

defonce data-center $ r/atom $ {}

defn render-dom ()
  r/render-component
    [] component/page @data-center
    .querySelector js/document |#app

defn -main ()
  enable-console-print!
  devtools/set-pref! :install-sanity-hints true
  devtools/install!

  render-dom
  println "|Running main..."

set! js/window.onload -main

defn fig-reload ()
  render-dom
