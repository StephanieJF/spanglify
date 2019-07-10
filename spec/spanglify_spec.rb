RSpec.describe Spanglify do

	describe "#process" do
		let(:input) { 'i like to party, but I do not like to Dance.' }
		let(:output) { subject.process(input) }

		it 'swaps the appropriate English word or phrase for the matching Spanish word or phrase' do
			expect(output).to eq('me gusta to fiesta, pero I do not like to Dance.')
		end

		it 'swaps words keeping appropriate capitalization' do
			expect(output).not_to eq('Me gusta to fiesta, pero I do not like to dance.')
		end
	end
end
