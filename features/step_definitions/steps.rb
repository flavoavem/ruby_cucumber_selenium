# features/step_definitions/steps.rb
require 'selenium-webdriver'
driver = Selenium::WebDriver.for :"#{ENV['BROWSER']}"

Given('The first exercise') do
  driver.get 'https://www.w3schools.com/css/exercise.asp?filename=exercise_css3_animations1'
end

When('the first form is completed') do
  search = driver.find_element(xpath: '//*[@id="assignmentcontainer"]/input[1]')
  search.click
  search.send_keys('example')

  search = driver.find_element(xpath: '//*[@id="assignmentcontainer"]/input[2]')
  search.click
  search.send_keys('animation-duration')

  search = driver.find_element(xpath: '//*[@id="assignmentcontainer"]/input[3]')
  search.click
  search.send_keys('background-color')

  search = driver.find_element(xpath: '//*[@id="assignmentcontainer"]/input[4]')
  search.click
  search.send_keys('background-color')
end

Then('the second exercise can begin') do
  sleep 3
  # 'Submit Answer' button
  search = driver.find_element(xpath: '//*[@id="answerbutton"]')
  search.location_once_scrolled_into_view
  search.click
  sleep 3
  # 'Next >' Displayed if answer was correct.
  #  Click on block to navigate to Exercise
  search = driver.find_element(xpath: '//*[@id="correctnextbtn"]')
  search.click
  sleep 5
end

Given('The second exercise') do
  search = driver.current_url
  assert_equal 'https://www.w3schools.com/css/exercise.asp?filename=exercise_css3_animations2', search
end

When('the second form is completed') do
  search = driver.find_element(xpath: '//*[@id="assignmentcontainer"]/input[1]')
  search.click
  search.send_keys('left:0px; top:0pxe')

  search = driver.find_element(xpath: '//*[@id="assignmentcontainer"]/input[2]')
  search.click
  search.send_keys('left:0px; top:200px')

  search = driver.find_element(xpath: '//*[@id="assignmentcontainer"]/input[3]')
  search.click
  search.send_keys('left:200px; top:200px')

  search = driver.find_element(xpath: '//*[@id="assignmentcontainer"]/input[4]')
  search.click
  search.send_keys('left:200px; top:0px')

  search = driver.find_element(xpath: '//*[@id="assignmentcontainer"]/input[5]')
  search.click
  search.send_keys('left:0px; top:0px')
end

Then('the third exercise can begin') do
  # 'Submit Answer' button
  search = driver.find_element(xpath: '//*[@id="answerbutton"]')
  search.location_once_scrolled_into_view
  search.click
  sleep 3

  # 'Next >' Displayed if answer was correct.
  #  Click on block to navigate to Exercise
  search = driver.find_element(xpath: '//*[@id="correctnextbtn"]')
  search.click
  sleep 3
end

Given('The third exercise') do
  search = driver.current_url
  assert_equal 'https://www.w3schools.com/css/exercise.asp?filename=exercise_css3_animations3', search
end

When('the third form is completed') do
  search = driver.find_element(xpath: '//*[@id="assignmentcontainer"]/input[1]')
  search.click
  search.send_keys('animation-delay')

  search = driver.find_element(xpath: '//*[@id="assignmentcontainer"]/input[2]')
  search.click
  search.send_keys('1s')
end

Then('the forth exercise can begin') do
  # 'Submit Answer' button
  search = driver.find_element(xpath: '//*[@id="answerbutton"]')
  search.location_once_scrolled_into_view
  search.click
  sleep 3

  # 'Next >' Displayed if answer was correct.
  #  Click on block to navigate to Exercise
  search = driver.find_element(xpath: '//*[@id="correctnextbtn"]')
  search.click
  sleep 3
end

Given('The forth exercise') do
  search = driver.current_url
  assert_equal 'https://www.w3schools.com/css/exercise.asp?filename=exercise_css3_animations4', search
end

When('the forth form is completed') do
  search = driver.find_element(xpath: '//*[@id="assignmentcontainer"]/input[1]')
  search.click
  search.send_keys('animation-iteration-count')

  search = driver.find_element(xpath: '//*[@id="assignmentcontainer"]/input[2]')
  search.click
  search.send_keys('infinite')
end

Then('the fifth exercise can begin') do
  # 'Submit Answer' button
  search = driver.find_element(xpath: '//*[@id="answerbutton"]')
  search.location_once_scrolled_into_view
  search.click
  sleep 3

  # 'Next >' Displayed if answer was correct.
  #  Click on block to navigate to Exercise
  search = driver.find_element(xpath: '//*[@id="correctnextbtn"]')
  search.click
  sleep 3
end

Given('The fifth exercise') do
  search = driver.current_url
  assert_equal 'https://www.w3schools.com/css/exercise.asp?filename=exercise_css3_animations5', search
end

When('the fifth form is completed') do
  search = driver.find_element(xpath: '//*[@id="assignmentcontainer"]/input[1]')
  search.click
  search.send_keys('animation-direction')

  search = driver.find_element(xpath: '//*[@id="assignmentcontainer"]/input[2]')
  search.click
  search.send_keys('alternate')
end

Then('the sixth exercise can begin') do
  # 'Submit Answer' button
  search = driver.find_element(xpath: '//*[@id="answerbutton"]')
  search.location_once_scrolled_into_view
  search.click
  sleep 3

  # 'Next >' Displayed if answer was correct.
  #  Click on block to navigate to Exercise
  search = driver.find_element(xpath: '//*[@id="correctnextbtn"]')
  search.click
  sleep 3
end

Given('The sixth exercise') do
  search = driver.current_url
  assert_equal 'https://www.w3schools.com/css/exercise.asp?filename=exercise_css3_animations6', search
end

When('the sixth form completed') do
  search = driver.find_element(xpath: '//*[@id="assignmentcontainer"]/input[1]')
  search.click
  search.send_keys('animation-timing-function')

  search = driver.find_element(xpath: '//*[@id="assignmentcontainer"]/input[2]')
  search.click
  search.send_keys('ease-in-out')
end

Then('the exercises are done') do
  # 'Submit Answer' button
  search = driver.find_element(xpath: '//*[@id="answerbutton"]')
  search.location_once_scrolled_into_view
  search.click
  sleep 3

  search = driver.find_element(xpath: '//*[@id="assignmentCorrect"]/h2')
  search.displayed?
end


