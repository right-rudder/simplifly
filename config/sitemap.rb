# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "simpliflyco.com"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end

  # Locations dynamic routes
  add '/pilot-training/downtown-arizona-flight-school', changefreq: 'weekly'
  add '/pilot-training/superstition-springs-arizona-flight-school', changefreq: 'weekly'
  add '/pilot-training/dobson-ranch-arizona-flight-school', changefreq: 'weekly'
  add '/pilot-training/fiesta-district-arizona-flight-school', changefreq: 'weekly'
  add '/pilot-training/las-sendas-arizona-flight-school', changefreq: 'weekly'
  add '/pilot-training/eastmark-arizona-flight-school', changefreq: 'weekly'
  add '/pilot-training/lehi-arizona-flight-school', changefreq: 'weekly'
  add '/pilot-training/alta-arizona-flight-school', changefreq: 'weekly'
  add '/pilot-training/red-mountain-ranch-arizona-flight-school', changefreq: 'weekly'
  add '/pilot-training/sunland-village-arizona-flight-school', changefreq: 'weekly'
  add '/pilot-training/apache-wells-arizona-flight-school', changefreq: 'weekly'
  add '/pilot-training/mesa-grande-arizona-flight-school', changefreq: 'weekly'
  add '/pilot-training/velda-rose-estates-arizona-flight-school', changefreq: 'weekly'
  add '/pilot-training/northwest-arizona-flight-school', changefreq: 'weekly'
  add '/pilot-training/west-arizona-flight-school', changefreq: 'weekly'
  add '/pilot-training/mountain-view-arizona-flight-school', changefreq: 'weekly'
  add '/pilot-training/greenfield-lakes-gilbert-arizona-flight-school', changefreq: 'weekly'
  add '/pilot-training/adobe-hills-arizona-flight-school', changefreq: 'weekly'
  add '/pilot-training/the-groves-arizona-flight-school', changefreq: 'weekly'
  add '/pilot-training/tempe-arizona-flight-school', changefreq: 'weekly'


  #Static Pages
  add '/stratus-finance'
  add '/meritize'
  add '/accelerated-pilot-training'
  add '/flexible-pilot-training'
  add '/why-simplifly'
  add '/financing'
  add '/pilot-training-pricing-calculator'
  add '/approximate-pilot-training-costs'
  add '/timeline-to-be-a-pilot'
  add '/multi-engine-rating'
  add '/commercial-pilot-training'
  add '/instrument-rating'
  add '/private-pilot-training'
  add '/pilot-training'
  add '/airline-pilot-courses'
  add '/pilot-programs'
  add '/our-team'

  #Blog
  add '/blog'

  #Forms
  add '/enroll-at-simplifly'
  add '/contact'
  add '/visit-simplifly'
  add '/instruct-at-simplifly'
  add '/discovery-flight'


end
