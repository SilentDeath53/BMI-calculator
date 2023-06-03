local function calculateBMI(weight, height)
    local heightInMeters = height / 100
    local bmi = weight / (heightInMeters * heightInMeters)
    return bmi
end

local function categorizeBMI(bmi)
    if bmi < 18.5 then
        return "Underweight"
    elseif bmi < 25 then
        return "Normal weight"
    elseif bmi < 30 then
        return "Overweight"
    else
        return "Obese"
    end
end

local function runBMICalculator()
    print("BMI Calculator")
    print("---------------")

    io.write("Enter your weight in kilograms: ")
    local weight = tonumber(io.read())

    io.write("Enter your height in centimeters: ")
    local height = tonumber(io.read())

    local bmi = calculateBMI(weight, height)
    local category = categorizeBMI(bmi)

    print("\nYour BMI is:", bmi)
    print("BMI Category:", category)
end

runBMICalculator()
