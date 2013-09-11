require 'spec_helper'

describe Favorite do
  it {should belong_to (:customer)}
  it {should belong_to (:collection)}
end
