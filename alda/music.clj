(ns core
  (:require [alda.core :refer :all]))

(defn gennote [kw-note] (->> kw-note (pitch) (note)))
(defn playseq
  [& kw-notes]
  (apply play!
    (into [(part "piano")]
      (map gennote kw-notes))))
(defn main [& args]
  (playseq :e :d :c :d :e :e :e))
