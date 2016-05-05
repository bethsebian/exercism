(ns hello-world)


(def my-var "HELLO")
(println my-var)

; (def print-stuff
;   (fn [argument-1 argument-2]
;   (println argument-2 argument-1)))
;
; (print-stuff "pizza" "hello")

(defn print-stuff [arg1 arg2]
  (println arg1 arg2))

(print-stuff "pizza" "hi")

(defn hello
  ([] "Hello, World!")
  ([arg1] (str "Hello, " arg1 "!")))