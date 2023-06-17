module Mutations
  class AddUser < BaseMutation
    field :user, Types::UserType, null: false

    argument :user_id, ID, loads: Types::UserType

    def resolve(user:)
      { user: }
    end
  end
end
