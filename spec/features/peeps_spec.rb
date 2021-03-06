feature 'peeps_spec' do

  let(:user) do
    User.create(username: 'user1',
                email: 'user1@email.com',
                password: '1234',
                password_confirmation: '1234')
  end

  scenario 'user can see a list of peeps' do
    sign_in(username: user.username,
            password: user.password)
    submit_peep
    submit_peep2
    expect(page).to have_content("I'm on Chitter!")
  end

end
