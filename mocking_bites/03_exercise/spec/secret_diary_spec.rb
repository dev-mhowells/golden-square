require 'secret_diary'

RSpec.describe SecretDiary do

    it "fails" do
        entry1 = double(:diary, read: "entry1")
        secret_diary = SecretDiary.new(entry1)
        expect { secret_diary.read }.to raise_error 'locked'
    end

    it "Returns the diary's contents if the diary is unlocked" do
        entry1 = double(:diary, read: "entry1")
        secret_diary = SecretDiary.new(entry1)
        secret_diary.unlock
        expect(secret_diary.read).to eq 'entry1'
    end

    it "Returns the diary's contents if the diary is unlocked" do
        entry1 = double(:diary, read: "entry1")
        secret_diary = SecretDiary.new(entry1)
        secret_diary.unlock
        secret_diary.lock
        expect { secret_diary.read }.to raise_error 'locked'
    end

end
