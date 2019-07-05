RSpec.describe Spanglify do
	let(:input) { 'Are you ready?' }
	let(:output) { subject.process(input) }

	describe "#process" do
		it 'swaps an English word for a Spanish word' do
			expect(output).to eq('Estás ready?')
		end

		it 'swaps words keeping appropriate capitalization' do
			expect(output).not_to eq('estás ready?')
		end
	end
end
