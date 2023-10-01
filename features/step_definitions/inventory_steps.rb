Before do
    page.driver.browser.manage.window.maximize
  end
  
Given ("User visit {string} page to setting inventory") do |url|
    visit url
    expect(find("[placeholder='Nama, SKU, Merek Lain']"))
end

When ("User input {string} in search field Persediaan page") do |keyword|
    expect(find("[placeholder='Nama, SKU, Merek Lain']").set(keyword))
    find(:xpath, "//span[@class='glyphicon glyphicon-search']").click
end

And ("User click on checkbox") do
    find(:xpath, "//label[@for='checkbox0']").click
end

And ("User click on Penyesuaian Persediaan button") do
    find_button('Penyesuaian Persediaan').click
    expect(page).to(have_content('Qty Akhir'), wait: 10, visible: true)
end

And ("User click on +- column") do
    element = find(:xpath, "//*[@id='page-wrapper']/div[3]/div/div/div/div[2]/div/div/div/div/div[1]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div/div[2]/div[1]/div/div[2]/div")
    element.double_click
end


And ("User update inventory quantity to {string}") do |quantity|
    element = find(:xpath, "//*[@id='page-top']/div[6]/div/input")
    element.set(quantity)
    find(:xpath, "//*[@id='page-wrapper']/div[3]/div/div/div/div[2]/div/div/div/div/div[1]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div/div[2]/div[1]/div/div[5]/div/div/span/div").click
    sleep 5
end

And ("User click on Simpan button") do
    find_button('Simpan').click
end

And ("User success to update inventory quantity") do
    expect(page).to(have_content('Data berhasil disimpan.'), wait: 10)
end
