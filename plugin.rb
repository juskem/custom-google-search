# plugins/custom-google-search/plugin.rb
# name: custom-google-search
# about: Customizes the Google search endpoint in Discourse
# version: 0.1
# authors: Jussi Kemppinen
# url: https://github.com/juskem/custom-google-search

enabled_site_setting :custom_google_search_enabled

after_initialize do
  # This tells Discourse to use our custom template
  Discourse::Application.routes.append do
    get "components/google-search" => "discourse#show", constraints: { format: "json" }
  end
end