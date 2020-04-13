cask 'alfred3' do
  version '3.8.6_972'
  sha256 :no_check

  url "https://cachefly.alfredapp.com/Alfred_#{version}.dmg"
  name 'Alfred'
  homepage 'https://www.alfredapp.com/'

  auto_updates false

  app "Alfred 3.app"

  uninstall quit: 'com.runningwithcrayons.Alfred'

  zap trash: [
               '~/Library/Application Support/Alfred 3',
               '~/Library/Caches/com.runningwithcrayons.Alfred-3',
               '~/Library/Preferences/com.runningwithcrayons.Alfred-3.plist',
               '~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences-3.plist',
               '~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences-3.savedState',
             ]
end