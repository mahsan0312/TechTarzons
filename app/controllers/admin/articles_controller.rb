module Admin
  class ArticlesController < ::ArticlesController
    before_action :authorize_admin!

    # Additional admin-specific actions or overrides can be added here.
  end
end
