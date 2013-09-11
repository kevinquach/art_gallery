require 'spec_helper'

describe Customer do
  it {should have_valid(:name).when('Kanye West', 'Gucci Mayne', 'Jay-Z')}
  it {should_not have_valid(:name).when(nil, '') }

  it {should have_valid(:email).when('john.do@gmail.com', 'jacob.do@gmail.com')}
  it {should_not have_valid(:email).when(nil, '')}

  it {should have_valid(:dollar_amount_purchased).when(1223332, 19593, 30004, 0)}
  it {should_not have_valid(:dollar_amount_purchased).when(nil, '') }

  it {should have_many(:artworks).through(:purchases)}
  it {should have_many(:purchases)}

  it {should have_many(:collections).through(:favorites)}
  it {should have_many(:favorites)}
end
