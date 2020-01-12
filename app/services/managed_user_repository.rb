class ManagedUserRepository

  def initialize(client)
    @client = client
  end

  def get_users query 
    @client.get_users query
  end
end