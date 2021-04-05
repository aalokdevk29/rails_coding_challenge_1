json.name component.name
json.impect component.impect, :climate_change, :water_use if component.impect

if component.subcomponents
  json.components component.subcomponents do |component|
    json.partial! 'components/component', component: component
  end
end
