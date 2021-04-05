json.extract! cycle, :name
json.components cycle.components do |component|
  json.partial! 'components/component', component: component
end
