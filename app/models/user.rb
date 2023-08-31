# frozen_string_literal: true

module User
  module_function

  def find(predicates)
    case predicates
    in { email: 'test@example.com', password: '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8' }
      {
        id:            '742b2e08-5b21-46d8-bc30-e4c2a014ec4a',
        first_name:    'Test',
        last_name:     'Professional',
        email:         'test@example.com',
        groups:        ['professionals'],
        tags:          ['activated', 'highly-rated'],
        last_login_at: 1.week.ago.to_s,
      }
    else
      nil
    end
  end
end
