require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "should create and save a new product" do
      
      cat = Category.find_or_create_by! name: 'Trees'
      
      @product = Product.new({
        name:  'Tester Tree',
        description: "This is a test product",
        quantity: 20,
        price: 99.99,
        category: cat
      })

      @product.save!

      expect(@product).to be_present
    end

    it "should create and save product with a name" do
      
      cat = Category.find_or_create_by! name: 'Trees'
      
      @product = Product.new({
        name:  'Tester Tree',
        description: "This is a test product",
        quantity: 20,
        price: 99.99,
        category: cat
      })

      @product.save!

      expect(@product.name).to be_present
    end

    it "should create and save product with a price" do
      
      cat = Category.find_or_create_by! name: 'Trees'
      
      @product = Product.new({
        name:  'Tester Tree',
        description: "This is a test product",
        quantity: 20,
        price: 99.99,
        category: cat
      })

      @product.save!

      expect(@product.price).to be_present
    end

    it "should create and save product with a quantity" do
      
      cat = Category.find_or_create_by! name: 'Trees'
      
      @product = Product.new({
        name:  'Tester Tree',
        description: "This is a test product",
        quantity: 20,
        price: 99.99,
        category: cat
      })

      @product.save!

      expect(@product.quantity).to be_present
    end

    it "should create and save product with a category" do
      
      cat = Category.find_or_create_by! name: 'Trees'
      
      @product = Product.new({
        name:  'Tester Tree',
        description: "This is a test product",
        quantity: 20,
        price: 99.99,
        category: cat
      })

      @product.save!

      expect(@product.category).to be_present
    end

  end
end
