class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '--'},
    { id: 2, name: 'ToDo'},
    { id: 3, name: 'Done'}
  ]
  include ActiveHash::Associations
  has_many :tasks
end