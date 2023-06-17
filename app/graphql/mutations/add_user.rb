module Mutations
  class AddUser < BaseMutation
    field :user, Types::UserType, null: false

    argument :user_id, ID, loads: Types::UserType

    def resolve(user:)
      { user: }
    end

    # Should this be here?
    # def object_from_id(_type, global_id, _query_ctx)
    #   User.find(global_id)
    # end
  end
end
