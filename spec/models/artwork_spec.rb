require 'spec_helper'

describe Artwork do
  it {should have_valid(:name).when('Night Sky', 'Guernica', 'Mona Lisa')}
  it {should_not have_valid(:name).when(nil, '') }

  it {should have_valid(:date_created).when('October 4th, 1990', 'September 6th, 2060')}
  it {should_not have_valid(:date_created).when(nil, '')}

  it {should have_valid(:purchased).when(true, false)}
  it {should_not have_valid(:purchased).when(nil)}

  it {should have_valid(:type).when('Watercolor', 'Expressionist')}
  it {should_not have_valid(:type).when(nil, '')}

  it {should have_valid(:cost).when(10000, 1, 412324)}
  it {should_not have_valid(:cost).when(nil, '', 'one BILLION dollars!!')} 

  it {should belong_to(:artist)}
  it {should belong_to(:collection)}

  it {should belong_to(:purchase)}
end
