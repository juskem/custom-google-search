# plugins/custom-google-search/plugin.rb
# name: custom-google-search
# about: Customizes the Google search endpoint in Discourse
# version: 0.1
# authors: Jussi Kemppinen
# url: https://github.com/juskem/custom-google-search

enabled_site_setting :custom_google_search_enabled

after_initialize do
  # Nothing additional needed here since we're only replacing the template
end