module Admin
  class ArticlesController < ::ArticlesController
    before_action :authorize_admin!

  end
end
