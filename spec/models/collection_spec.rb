require 'spec_helper'

describe Collection do
  it {should have_valid(:name).when('Modern Collection', 'Classic Collection')}
  it {should_not have_valid(:name).when(nil, '') }

  it {should have_many(:artworks)}
end
