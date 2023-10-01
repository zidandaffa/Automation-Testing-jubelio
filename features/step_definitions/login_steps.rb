Before do
  page.driver.browser.manage.window.maximize
end

  Given ("User visit {string}") do |url|
    visit url
    expect(page).to(have_content('Login'))
    sleep 3
  end

  When("User input email in login credential") do
    fill_in 'email', with:'rocot10381@estudys.com'
  end

  And("User input password in login credential") do
   fill_in 'password', with: 'Jubelio123!'
  end

  And('User click login button') do
    find("button[type='Submit']").click
    sleep 10
  end

  Then('User redirect to dashboard') do
    expect(page).to(have_content('Selamat Datang'), wait: 10)
    find(:xpath, '//*[@class="metismenu nav"]', visible: true)
    expect(find(:xpath, '//*[@class="user-name dropdown"]'))
  end

  And(/^User see title "([^"]*)" text$/) do |title|
    page.should have_content(title)
  end
