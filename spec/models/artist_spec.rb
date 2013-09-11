require 'spec_helper'

describe Artist do
  it {should have_valid(:name).when('Pablo Picasso', 'Vincent Van Gogh', 'Claude Monet')}
  it {should_not have_valid(:name).when(nil, '') }

  it {should have_valid(:email_address).when('john.do@gmail.com', 'jacob.do@gmail.com')}
  it {should_not have_valid(:email_address).when(nil, '')}

  it {should have_valid(:birthplace).when('Spain', 'Netherlands')}
  it {should_not have_valid(:birthplace).when(nil, '')}

  it {should have_valid(:style_of_art).when('Abstract', 'Impressionism')}
  it {should_not have_valid(:style_of_art).when(nil, '')}

  it {should have_many :artworks}
end
