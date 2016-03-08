layout 'layout.html.slim'
ignore /.git/
ignore /\/_.*/
ignore 'README.md'
ignore /.*\.csv/
ignore /.*\.sh/
ignore /secret.*/

#here's how to make helpers that you can use in your views
helpers do
  def say_hello
    'Hello'
  end

  def get_goals
      require 'CSV'
      groups = {}
      CSV.foreach(Dir.glob("*.csv")[0],headers:true) do |row|
        groups[row['group_name']] = {} unless groups[row['group_name']]
        groups[row['group_name']][row['group_objective']] = [] unless groups[row['group_name']][row['group_objective']]
        groups[row['group_name']][row['group_objective']]<< row['group_key_result']
      end
      groups
  end
end
