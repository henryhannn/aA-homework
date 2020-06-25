require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Henry") }
  subject(:fruitcake) { Dessert.new("fruitcake", 100, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(fruitcake.type).to eq('fruitcake')
    end

    it "sets a quantity" do
      expect(fruitcake.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(fruitcake.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("fruitcake", "cake", chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      fruitcake.add_ingredient("strawberry")
      expect(fruitcake.ingredients).to include("strawberry")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["strawberry", "kiwi", "orange", "sugar", "egg", "flour"]

      ingredients.each {|ele| fruitcake.add_ingredient(ele)}
      expect(fruitcake.ingredients).to eq(ingredients)
      fruitcake.mix!
      expect(fruitcake.ingredients).to_not eq(ingredients)
      expect(fruitcake.ingredients.sort).to eq(ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      fruitcake.eat(10)
      expect(fruitcake.quantity).to eq(90)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{ fruitcake.eat(105) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do

    end
  end
end
