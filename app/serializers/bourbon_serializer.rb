class BourbonSerializer
  def self.serialize(bourbon)

    # start with the open brace to create a valid JSON object
    serialized_bourbon = '{'

    serialized_bourbon += '"id": ' + bourbon.id.to_s + ', '

    serialized_bourbon += '"name": "' + bourbon.name + '", '
    serialized_bourbon += '"age": ' + bourbon.age.to_s + ', '
    serialized_bourbon += '"grain": "' + bourbon.grain + '", '
    serialized_bourbon += '"description": "' + bourbon.description + '", '
    # the author association can also be represented in JSON
    serialized_bourbon += '"distillery": {'
    serialized_bourbon += '"name": "' + bourbon.distillery.name + '"}'

    # and end with the close brace
    serialized_bourbon += '}'
  end
end
