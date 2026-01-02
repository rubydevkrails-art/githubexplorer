require 'github_explorer/user'

RSpec.describe GitHubExoplorer::User do
  let(:data){{  'login' => 'testuser', 'followers'=> 10}}
  let(:data){GitHubExoplorer::User.new(data)}

  it "assigns attributes correctly" do
    expect(user.login).to eq('testuser')
    expect(user.followers).to eq(10)
  end
end
