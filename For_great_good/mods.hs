-- this chapter sucks ngl
import Data.List

meowList :: (Integral a) => [[a]]
meowList = [-- transpose [[1,2,3],[2,3,4],[3,4,5]],
            concat [[3,4,5],[2,3,4],[1,2,3]]
           ]
