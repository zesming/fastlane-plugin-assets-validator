describe Fastlane::Actions::AssetsValidatorAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The assets_validator plugin is working!")

      Fastlane::Actions::AssetsValidatorAction.run(nil)
    end
  end
end
