cask '1password6' do
  version '6.8.9'
  sha256 :no_check
  # cache.agilebits.com/dist/1P/mac4 was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  app "1Password #{version.major}.app"

  appcast 'https://app-updates.agilebits.com/product_history/OPM4'
  name '1Password6'
  homepage 'https://1password.com/'

  auto_updates true

  zap trash: [
               '~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
               '~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
               '~/Library/Containers/com.agilebits.onepassword-osx',
               '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
             ]
end
