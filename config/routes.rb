<<<<<<< HEAD
Rails.application.routes.draw do
  


  get 'links/new'

  get 'links/edit'

  get 'links/show'

  devise_for :users

resource :user
 
resources :users do
  resources :training_sets do
    resources :trainings do
      resources :t_answers
    end
  end
end
  
  resources :teacher_comments
  resources :practice_exercises do
      resources :pe_questions do
        resources :pe_answers
      end
    end


  resources :classrooms do
        patch :add_student_to_classroom
        resources :users do
          get :miscategories
        end
        resources :assignments do
          get :check_corrections
          patch :calculate_class_average_on_assignment
        end
  end

  
  resources :assignments

  resources :sentences
  resources :t_answers

  resources :evaluations do
    resources :criteria
  end


  resources :mistakes do
    resources :links
    resources :trainings
  end
  
resources :words_in_mistakes



  resources :essays do
      patch :give_trackernum_to_sentences
      patch :submit_essay
      patch :unsubmit_essay
      patch :give_feedback
      patch :change_rubric
      patch :set_paragraphs_for_second_draft
      get :create_grade_template
      resource :grade do
        resources :grade_elements
      end
    resources :words_in_mistakes
    resources :training_sets
    resources :paragraphs do
      resources :sentences do
        resources :words_in_mistakes 
      end
    end
  end


  get '/homepage'  => 'homepage#show'


  
  root "homepage#show"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
=======
Rails.application.routes.draw do
  


  get 'links/new'

  get 'links/edit'

  get 'links/show'

  devise_for :users

resource :user
 
resources :users do
  resources :training_sets do
    resources :trainings do
      resources :t_answers
    end
  end
end
  
  resources :teacher_comments
  resources :practice_exercises do
      resources :pe_questions do
        resources :pe_answers
      end
    end


  resources :classrooms do
        patch :add_student_to_classroom
        resources :users do
          get :miscategories
        end
        resources :assignments do
          get :check_corrections
          patch :calculate_class_average_on_assignment
        end
  end

  
  resources :assignments

  resources :sentences
  resources :t_answers

  resources :evaluations do
    resources :criteria
  end


  resources :mistakes do
    resources :links
    resources :trainings
  end
  
resources :words_in_mistakes



  resources :essays do
      patch :give_trackernum_to_sentences
      patch :submit_essay
      patch :unsubmit_essay
      patch :give_feedback
      patch :change_rubric
      patch :set_paragraphs_for_second_draft
      get :create_grade_template
      get :error_summary
      resource :grade do
        resources :grade_elements
      end
    resources :words_in_mistakes
    resources :training_sets
    resources :paragraphs do
      resources :sentences do
        resources :words_in_mistakes 
      end
    end
  end


  get '/homepage'  => 'homepage#show'


  
  root "homepage#show"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
>>>>>>> fc43d6ed5e3286748e0fc862c39bcb2746308c94
