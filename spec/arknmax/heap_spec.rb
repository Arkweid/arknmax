describe Arknmax::Heap do
  let(:string_io) { StringIO.new }
  let(:numbers) { [332, 9999, 0, 11] }
  let(:size_limit) { 3 }
  let(:data_structure) { subject.data_structure }

  subject { described_class.new(size_limit, io: string_io) }

  before { numbers.each { |x| subject << x } }

  describe '#<<' do
    it 'add data to the heap' do
      expect(data_structure.has_key?(9999)).to be_truthy
    end

    it 'cut overlimited value' do
      expect(data_structure.has_key?(0)).to be_falsy
    end
  end

  describe '#print_from_max' do
    it 'write data to IO in DESC order' do
      subject.print_from_max
      expect(string_io.string.scan(/\d+/)).to eq %w[9999 332 11]
    end
  end

  describe '#print_from_min' do
    it 'write data to IO in ASC order' do
      subject.print_from_min
      expect(string_io.string.scan(/\d+/)).to eq %w[11 332 9999]
    end
  end

  describe '#to_a' do
    it 'transform to array in default ASC order' do
      expect(subject.to_a).to eq [11, 332, 9999]
    end
  end
end
