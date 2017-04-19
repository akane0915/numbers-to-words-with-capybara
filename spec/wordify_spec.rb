require('rspec')
require('wordify')
require('pry')


describe("Fixnum#numbers_to_words") do

  it("Convert a user's single digit number input to a text word.") do
  expect(1.numbers_to_words()).to(eq("one "))
  end

  it("Convert a user's two digit number input to a text word.") do
  expect(31.numbers_to_words()).to(eq("thirty one "))
  end

  it("Convert a user's two digit number in the teens input to a text word.") do
  expect(16.numbers_to_words()).to(eq("sixteen "))
  end

  it("Convert a user's three digit number input to a text word.") do
  expect(121.numbers_to_words()).to(eq("one hundred twenty one "))
  end

  it("Convert a user's four digit number input to a text word.") do
  expect(1214.numbers_to_words()).to(eq("one thousand two hundred fourteen "))
  end

  it("Convert a user's five digit number input to a text word.") do
  expect(11214.numbers_to_words()).to(eq("eleven thousand two hundred fourteen "))
  end

  it("Convert a user's six digit number input to a text word.") do
  expect(100000.numbers_to_words()).to(eq("one hundred thousand "))
  end

  it("Convert a user's seven digit number input to a text word.") do
  expect(1100000.numbers_to_words()).to(eq("one million one hundred thousand "))
  end

  it("Convert a user's 1000001 input to a text word.") do
  expect(1000001.numbers_to_words()).to(eq("one million one "))
  end

  it("Convert a user's 11000 input to a text word.") do
  expect(110000.numbers_to_words()).to(eq("one hundred ten thousand "))
  end

  it("Convert a user's 1000001 input to a text word.") do
  expect(1000001.numbers_to_words()).to(eq("one million one "))
  end

  it("Convert a user's 1000001 input to a text word.") do
  expect(100000001.numbers_to_words()).to(eq("one hundred million one "))
  end

end
