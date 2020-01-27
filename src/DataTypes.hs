module DataTypes (dataTypesExamples) where

-- Data type definition using 'Record syntax'
data Employee = Employee
  {
    employeeName :: String,
    employeeAge  :: Int
  }

-- Create an instance of Employee data type
employee1 :: Employee
employee1 = Employee "JJ" 12

-- Create display text
displayText :: Employee -> String
displayText employee =
  "Employee: " ++ (employeeName employee) ++ ", Age: " ++ (show . employeeAge $ employee)

dataTypesExamples :: IO ()
dataTypesExamples = do
  let employee1 = Employee "JJ" 27
  let employee2 = Employee "DD" 28
  -- employee1 is input to displayText, input to putStrLn is output of display text
  putStrLn . displayText $ employee1
  putStrLn . displayText $ employee2