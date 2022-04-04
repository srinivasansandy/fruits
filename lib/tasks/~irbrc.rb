def history
  history_array = Readline::HISTORY.to_a
  print history_array.join("\n")
end

#eval_history
