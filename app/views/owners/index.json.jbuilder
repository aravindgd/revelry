json.owners do
  json.array! @owners, partial: 'owners/owner', as: :owner
end
