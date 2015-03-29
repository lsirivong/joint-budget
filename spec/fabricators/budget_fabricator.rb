Fabricator(:budget) do
  name "my budget"
end

Fabricator(:budget_without_a_name, from: :budget) do
  name nil
end


