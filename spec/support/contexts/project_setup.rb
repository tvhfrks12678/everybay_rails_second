RSpec.shared_context "project setup" do
  let(:user) { FactoryBot.create(:user) } 
  let(:project ) { FactoryBot.create(:project, owner: user) } 
  let(:task) { project.tasks.create!(name: "Teat task") }
end