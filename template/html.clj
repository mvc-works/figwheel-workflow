
(require '[hiccup.core :refer [html]])

(defn render [data]
  (html
    [:html
     [:head
      [:title "figwheel-workflow"]
      [:link
       {:rel "stylesheet", :type "text/css", :href "css/style.css"}]
      [:link {:rel "icon", :type "image/png", :href "images/icon.png"}]
      [:style
       nil
       "body * {box-sizing: border-box; scroll-behavior: smooth; }"]]
     [:body [:div#app] [:script {:src "cljs/main.js"}]]]))
