task sample_data: do
  (0..50).each do |i|
    LineItem.create purchased_at: (i/3.0).days.ago, member_id: rand(1..2), budget_id: rand(1..4), description: ['Cursus', 'Malesuada', 'Porta', 'Magna', 'Sollicitudin'].shuffle.join(' '), amount: rand(4..10) * 5.1
  end
end