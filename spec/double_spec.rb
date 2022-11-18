RSpec.describe 'allow method review' do
  it 'can customize return value for methods on doubles' do
    calculate = double 
    allow(calculate).to receive(:chirag).and_return(15)
    expect(calculate.chirag).to eq(15)
  end
end
