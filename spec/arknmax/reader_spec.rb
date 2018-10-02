describe Arknmax::Reader do
  let(:string_io) { StringIO.new('におい332あるfsgから派生9999したもしくは中国0の一dfsて11使用される') }

  subject { described_class.new(2, io: string_io, max_digits_line: 2) }

  describe '#perform' do
    context 'with Array container' do
      before { subject.container = [] }

      it 'read numbers from io stream without order and limit' do
        expect(subject.perform).to eq([332, 9999, 0, 11])
      end
    end

    context 'with Heap container' do
      it 'read numbers from io stream with ASC order and size limit' do
        expect(subject.perform.to_a).to eq([332, 9999])
      end
    end
  end
end
