require 'rails_helper'

RSpec.describe ManagedUserRepository do

  it 'returns a list of managed users' do
    users = [{name: "sean", sl_id: "2", email: "sedavis@gmail.com", job_title: "manager"}]
    client = SalesloftService.new
    allow(client).to receive(:get_users).and_return(users)

    subject = ManagedUserRepository.new(client).get_users

    expect(subject).to eq users
  end

end