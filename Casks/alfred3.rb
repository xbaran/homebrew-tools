cask 'alfred3' do
  version '3.8.6_972'
  sha256 :no_check

  url "https://cachefly.alfredapp.com/Alfred_#{version}.dmg"
  name 'Alfred'
  homepage 'https://www.alfredapp.com/'

  auto_updates false

  app "Alfred #{version.major}.app"

  uninstall quit: 'com.runningwithcrayons.Alfred'

  zap trash: [
               '~/Library/Application Support/Alfred',
               '~/Library/Caches/com.runningwithcrayons.Alfred',
               '~/Library/Preferences/com.runningwithcrayons.Alfred.plist',
               '~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist',
               '~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences.savedState',
             ]
end