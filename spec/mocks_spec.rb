RSpec.describe "Mocks Examples" do
  it 'run car method' do 
    car = double('car')

    allow(car).to receive(:change_gear).and_return("Gear changed: 1")
    puts car.change_gear
    expect(car.change_gear).to eq('Gear changed: 1')
  end
end
