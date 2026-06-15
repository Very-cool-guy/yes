(ns symmetry)

(defn symmetrizer
  "symmetrizes stuff idk"
  [body]
  {:name (clojure.string/replace (:name body) #"left-" "right-")
   :size (:size body)}
  )

(defn symmetrize-parts
  "symmetrizes stuff lol"
  [asym-body-parts]
  (loop [remaining-asym asym-body-parts
         final-parts []]
    (if (empty? remaining-asym)
      final-parts
      (let [[part & remaining] remaining-asym]
        (recur remaining
               (into final-parts
                     (set [part (symmetrizer part)])))))))

(defn my-reduce
  "custom redocu function"
  ([f init coll]
   (loop [result init
          remaining coll]
     (if (empty? remaining)
       result
       (recur (f result (first remaining)) (rest remaining)))))
  ([f [meow & woof]]
   (my-reduce f meow woof))
  )

(defn better-symmetrize-parts
  "better"
  [remaining-asym-parts]
  (reduce (fn [rem-parts part]
            (into rem-parts (set [part (symmetrizer part)])))
          []
          remaining-asym-parts))

(defn hit
  "hit hobbit"
  [asym-body-parts]
  (let [sym-parts (better-symmetrize-parts asym-body-parts)
        body_sum (reduce + (map :size sym-parts))
        rand_sum (rand body_sum)]
    (loop [[part & remaining] sym-parts
           acc_size (:size part)]
      (if (> acc_size rand_sum)
        (:name part)
        (recur remaining (+ acc_size (:size (first remaining))))))))
