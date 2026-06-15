(ns clojure-noob.work)

(str "a" 1 :aa)
(list "a" 1 2 3 :l)
(vector "l" :iii 192 0)
(hash-map :a 1 :b 2 :c 3)
(hash-set :a :a 2 3 4 2 2 3 "l" :a)

(defn addhun
  "adds 100"
  [x]
  (+ x 100))

(defn dec-maker
  "makes a decreasing function"
  [decnum]
  (fn [x] (- x decnum)))

(defn my-map
  "map function implementation"
  [f coll]
  (loop [fcoll coll
         final []]
    (if (empty? fcoll)
      final
      (recur (rest fcoll) (conj final (f (first fcoll)))))))

(defn simple-mapset
  "works like map but is a set"
  [f coll]
  (set (my-map f coll)))

(defn matching-alien
  "beep boop"
  [body n]
  (reduce (fn [all numb]
            (conj all
                  {:size (:size body)
                   :name (clojure.string/replace (:name body) #"-(.*)" (str "-" numb))}))
          #{}
          (range 1 (inc n))))

(defn symmetrize-alien
  "better"
  [alien-parts n]
  (reduce (fn [rem-parts part]
            (into rem-parts (matching-alien part n)))
          []
          alien-parts))
