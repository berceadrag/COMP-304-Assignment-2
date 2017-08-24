\begin{code}

asc :: Ord a => [a] -> Bool
asc [] = True -- true that it's not descending
asc [x] = True -- true that it's not descending
asc (x:xs) = if head xs >= x
				then asc xs
			else 
				False


-- [1,2,3]
perms :: [a] -> [[a]]
perms [] = [[]]
perms [x,y] = [[x,y],[y,x]]
perms (x:xs) = (map (x:) (perms xs)) 

-- *Main> map (1:) [[1,2],[2,1]]
-- [[1,1,2],[1,2,1]]
-- (map (((x:xs) !! num):) (perms xs (num+1) ))

\end{code}