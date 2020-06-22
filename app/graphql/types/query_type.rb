module Types
  class QueryType < Types::BaseObject

    field :users, [Types::UserType], null: false
    
    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end


    def users
      User.all
    end
    
    def user(id:)
      User.find(id)
    end

    # example, please delete me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end
  end
end
