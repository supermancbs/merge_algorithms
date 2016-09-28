require './merge_sort.rb'


RSpec.describe '#merge' do
  context "with two sorted lists" do
    it "sorts two already sorted lists" do
      left = [4, 8, 20, 30]
      right = [1, 18, 22, 25]
      expect(merge(left, right)).to eq [1, 4, 8, 18, 20, 22, 25, 30]
    end
  end
end

RSpec.describe '#merge_sort' do
  context "sorts array" do
    it "sorts array into an ordered list" do
      array = [100, 20, 3, 10, 8, 13, 200, 4, 1]
      expect(merge_sort(array)).to eq [1, 3, 4, 8, 10, 13, 20, 100, 200]
    end
  end
end
