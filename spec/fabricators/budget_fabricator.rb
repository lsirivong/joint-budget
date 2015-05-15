Fabricator(:budget) do
  name "my budget"
end

Fabricator(:budget_without_a_name, from: :budget) do
  name nil
end

Fabricator(:budget_with_line_items, from: :budget) do
  line_items(count: 2)
end
