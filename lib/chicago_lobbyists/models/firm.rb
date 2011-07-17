class Firm
  include DataMapper::Resource
  
  storage_names[:default] = "chi_lobbyist_firm_relationships"

  property :id,         Serial, :required => true
  property :slug,       String, :required => true
  property :name,       String, :required => true

  has n, :firm_relationships
  has n, :lobbyists, :through => :firm_relationships

end