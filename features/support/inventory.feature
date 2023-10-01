Feature: Update product quantity in Penyesuaian Persediaan page

@update-stock @regresion
Scenario: User able to update product quantity in Persediaan page
  Given User visit "https://app2.jubelio.com/login"
  And User input email in login credential
  And User input password in login credential
  And User click login button
  And User visit "https://app2.jubelio.com/home/inventory" page to setting inventory
  And User input "ROG-3000" in search field Persediaan page
  And User click on checkbox
  And User click on Penyesuaian Persediaan button
  And User click on +- column
  When User update inventory quantity to "2"
  And User click on Simpan button
  Then User success to update inventory quantity
