
ns figwheel-workflow.style.layout
  :require
    [] reagent.core :as r
    [] hsl.core :refer $ [] hsl

def fullscreen $ {}
  :width |100%
  :height |100%
  :position |absolute
  :top 0
  :left 0
  :overflow |auto

def hspace $ {}
  :height 1
  :vertical-align |middle
  :display |inline-block

def vspace $ {}
  :width |100%

def row $ {}
  :display :flex
  :flex-direction :row
  :align-items :stretch

def column $ {}
  :display :flex
  :flex-direction :column
  :align-items :stretch

def flex $ {}
  :flex 1

def center $ {}
  :display :flex
  :flex-direction :row
  :align-items :center
  :justify-content :center

def hr $ {}

def vr $ {}
