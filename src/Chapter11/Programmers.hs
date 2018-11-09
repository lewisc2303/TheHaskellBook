module Programmers where

data OperatingSystem =
    GnuPlusLinux
    | OpenBSDPlusNevermindJustBSDStill 
    | Mac
    | Windows
    deriving (Eq, Show)

data ProgrammingLanguage =
    Haskell
    | Agda
    | Idris
    | PureScript 
    deriving (Eq, Show)
 
data Programmer =
    Programmer { os :: OperatingSystem
    , lang :: ProgrammingLanguage } 
    deriving (Eq, Show)

allOperatingSystems :: [OperatingSystem] 
allOperatingSystems =
    [ GnuPlusLinux
    , OpenBSDPlusNevermindJustBSDStill 
    , Mac
    , Windows]
        
allLanguages :: [ProgrammingLanguage] 
allLanguages = [Haskell, Agda, Idris, PureScript]

allProgrammers :: [Programmer] 
allProgrammers = go allOperatingSystems allLanguages
        where go oPSystems languages
                | oPSystems == [] = []
                | languages == [] = go (tail oPSystems) allLanguages
                | otherwise =  (Programmer (head oPSystems) (head languages)) : (go oPSystems (tail languages))

--allProgrammers = zipWith f allOperatingSystems allLanguages
  --  where f = \a b -> Programmer a b