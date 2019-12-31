module Lists (listFuncs) where

-- Lists
teams = ["red", "yellow", "purple", "green", "black"]

-- Head of the list (first element)
headOfTeamsList = head teams

-- Tail of the list (suffix of list minus the first element
tailsOfTeamsList = tail teams

-- Length of tailsOfTeamsList
lengthOfList = length teams

-- Reverse a list
reversedList = reverse teams

-- Check if value exists in a list
valueExistsInList = elem 13 [0..20]

-- Take N number of values from a list into a sublist
subListOf10Numbers = take 10 [0..20]

-- Drop N number of values from a list
droppedValuesFromList = drop 6 "Hello World!"

-- Zip - merge two lists into tuples
zippedList = zip [1,2,3] [4,5,6]

-- Create a list from scratch
-- Infix operator (:) -> `cons` -> construct
newCreatedList = 1:[]
newMultipleEntryList = 1:2:3:4:[]
newListOfTuples = (1,2):(3,4):(5,6):[]
newPrependedValueToList = 1:[2,3,4]
newStringFromChars = 'h':'e':'l':'l':'o':[]
newConcatenatedList = [1] ++ [2,3,4]

-- Generating a list over a range
newGeneratedListOverRange = [1..10]

-- Generating a list over a range at steps
newGeneratedListOverRangeWithStepping = [1,3..10]

-- Get value in a list by index
valueAtIndexTwo = [4,5,2,6,9] !! 2

listFuncs :: IO ()
listFuncs = do
    print headOfTeamsList
    print tailsOfTeamsList
    print newCreatedList
    print newMultipleEntryList
    print newListOfTuples
    print newPrependedValueToList
    print newStringFromChars
    print newConcatenatedList
    print newGeneratedListOverRange
    print newGeneratedListOverRangeWithStepping
    print valueAtIndexTwo
    print lengthOfList
    print reversedList
    print valueExistsInList
    print subListOf10Numbers
    print droppedValuesFromList
    print zippedList