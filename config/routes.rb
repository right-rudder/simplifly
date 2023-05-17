Rails.application.routes.draw do
  
  devise_scope :admins do
    # Redirests signing out users back to sign-in
    get "admins", to: "devise/sessions#new"
  end

  devise_for :admins, controllers: { registrations: "registrations", sessions: "sessions" }
  root "pages#home"


  post 'uploader/image', to: 'uploader#image' #add upload image to posts 
  get 'news', to: 'posts#index', as: :news
  get 'pilot-resources', to: 'posts#index', as: :pilot_resources
  resources :posts
  
  
  
  resources :book_downloads
  resources :checkouts
  resources :discover_flights
  resources :quiz_results
  resources :messages
  
  
  # Contact form
  get 'contact', to: 'messages#new', as: :contact
  get 'visit-ideal-aviation', to: 'messages#location', as: :location
  get 'contact-confirmation', to: 'messages#confirmation', as: :contact_confirmation

  # Quiz form
  get 'quiz', to: 'quiz_results#new', as: :quiz
  get 'quiz-confirmation', to: 'quiz_results#confirmation', as: :quiz_confirmation

  # Discovery flight form
  get 'discovery-flight', to: 'discover_flights#new', as: :discovery_flight
  get 'discovery-flight-confirmation', to: 'discover_flights#confirmation', as: :discovery_confirmation

  # Check out form
  get 'rental-checkout', to: 'checkouts#new', as: :rental_checkout
  get 'rental-checkout-confirmation', to: 'checkouts#confirmation', as: :checkout_confirmation

  # Book Download
  get 'book-download-confirmation', to: 'book_downloads#confirmation', as: :book_download_confirmation

  # Static Pages
  get 'how-to-become-a-pilot', to: 'pages#become_a_pilot', as: :become
  get 'pilot-programs', to: 'pages#pilot_programs', as: :programs
  get 'aircraft-rental', to: 'pages#aircraft_rental', as: :aircraft_rental
  get 'fixed-wing-airplane-fleet', to: 'pages#fixed_wing', as: :fixed_wing
  get 'rotary-wing-helicopter-fleet', to: 'pages#rotary_wing', as: :rotary_wing
  get 'airplane-pilot-training', to: 'pages#airplane_training', as: :airplane_training
  get 'helicopter-pilot-training', to: 'pages#helicopter_training', as: :helicopter_training
  get 'private-pilot-training', to: 'pages#private_pilot', as: :private_pilot
  get 'about-ideal-aviation', to: 'pages#about_us', as: :about_us
  get 'advanced_training', to: 'pages#advanced_training', as: :advanced_training
  get 'our-team', to: 'pages#our_team', as: :our_team
  #get 'pilot-resources', to: 'pages#pilot_resources', as: :pilot_resources
  get 'careers', to: 'pages#careers', as: :careers
  

end
