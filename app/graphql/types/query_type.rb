module Types
  class QueryType < Types::BaseObject
    # all users
    field :users, [Types::UserType], null: false
    def users
      User.all
    end
    
    # fielter user
    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
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
