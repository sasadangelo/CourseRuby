# Excercise 11
# 
# This excercise explain how to use maps.
# They are couple (key, value) that allow to access easily to values using the keys.
inst_section = {
  'cello'     => 'string',
  'clarinet'  => 'woodwind',
  'drum'      => 'percussion',
  'oboe'      => 'woodwind',
  'trumpet'   => 'brass',
  'violin'    => 'string'
}
p inst_section['oboe']
p inst_section['cello']
p inst_section['bassoon']

p inst_section[:oboe]		# return nil
p inst_section[:cello]     # return nil
# Note that strings aren't the same as symbols...
p inst_section['cello']
puts "An oboe is a #{inst_section['oboe']} instrument"



