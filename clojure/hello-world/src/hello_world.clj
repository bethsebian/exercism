(ns hello-world
  (:gen-class))

(defn hello
  ([] (hello "World"))
  ([arg] (str "Hello, " arg "!"))
)