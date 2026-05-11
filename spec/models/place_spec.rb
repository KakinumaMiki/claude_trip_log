require 'rails_helper'

RSpec.describe Place, type: :model do
  describe "アソシエーション" do
    it "belongs_to :prefecture が定義されている" do
      association = described_class.reflect_on_association(:prefecture)
      expect(association.macro).to eq(:belongs_to)
    end

    it "prefecture が存在しないと無効" do
      place = build(:place, prefecture: nil)
      expect(place).not_to be_valid
    end
  end

  describe "バリデーション" do
    context "正常系" do
      it "name と status があれば有効" do
        place = build(:place)
        expect(place).to be_valid
      end
    end

    context "name" do
      it "空のとき無効で「名称を入力してください」エラー" do
        place = build(:place, name: "")
        expect(place).not_to be_valid
        expect(place.errors[:name]).to include("名称を入力してください")
      end
    end

    context "status" do
      it "nil のとき無効で「訪問状況を選択してください」エラー" do
        place = build(:place, status: nil)
        expect(place).not_to be_valid
        expect(place.errors[:status]).to include("訪問状況を選択してください")
      end

      it "visited が有効" do
        place = build(:place, :visited)
        expect(place).to be_valid
      end

      it "want_to_visit が有効" do
        place = build(:place, :want_to_visit)
        expect(place).to be_valid
      end
    end
  end
end
