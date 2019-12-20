

# File Owners

=begin
  
rescue => exception
  
end
Implement a group_by_owners function that:

Accepts a hash containing the file owner name for each file name.
Returns a hash containing an array of file names for each owner name, in any order.
For example, for hash {'Input.txt' => 'Randy', 'Code.py' => 'Stan', 'Output.txt' => 'Randy'} the group_by_owners function should return {'Randy' => ['Input.txt', 'Output.txt'], 'Stan' => ['Code.py']}.

=end

def group_by_owners(files)
  better_hash = Hash.new { |hash, key| hash[key] = [] }
  files.each_with_object(better_hash) {|(k, v), hash| hash[v] << k}
end

files = {
  'Input.txt' => 'Randy',
  'Code.py' => 'Stan',
  'Output.txt' => 'Randy'
}
puts group_by_owners(files)