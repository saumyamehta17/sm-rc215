Railscast sm-rc202 and sm-rc215
===============================

Railscast sm-rc202
------------------
1. Article.all(conditions: ["name like ?","%0%"])
   Article.where("name like ?","%0%")     .includes(:comments)  joins(:comments)
2. use scope instead of named_scope
   see article.rb

3. To see query
   .to_sql

Railscast sm-rc215
--------------------
1. scope :cheaper_than, lambda {|price| where('price < ?',price) }
   Product.cheaper_than('12')
2. Nested scope
   def self.cheaper_than(price)
       where('price < ?',price)
   end

   scope :cheap, cheaper_than(15)

   see product.rb