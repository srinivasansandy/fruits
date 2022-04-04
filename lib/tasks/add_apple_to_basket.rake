
# run this command - rake "add_apple_to_basket:add_apple_to_basket[Baldwin, 5]"

namespace :add_apple_to_basket do

  desc 'Add apples to basket.'

  task :add_apple_to_basket, [:variety_param, :count_param] do  |t, args|
    puts 'Starting add_apple_to_basket'

    variety_param = args[:variety_param]
    count_param = args[:count_param]

    basket_ids = Apple.where('variety = ?', args[:variety_param]).pluck(:basket_id)
    
    available_baskets_atleast_one = nil;

    if !basket_ids.empty?
      # 1.Find an available basket that has 0 or is filled with at least 1 apple of the same sort as the variety argument.
      available_baskets_atleast_one = Basket.where('id = ?', basket_ids)
                                            .where('fill_rate <= ?', 1).first
    end

    baskets = Basket.where('id = ?', basket_ids)

    basket_fill_rate = 0
      
    if !baskets.empty?
      baskets.each do |basket|
        basket_fill_rate = basket.fill_rate

        while((count_param > 0) && (basket.capacity > basket_fill_rate))
          
          Basket.find_by(id: basket.id).update(fill_rate: basket_fill_rate)
          Apple.create(basket_id: basket.id, variety: variety_param)

          fill_rate_method(basket.id, variety_param, basket.capacity)

          basket_fill_rate = basket_fill_rate+1
          count_param = count_param-1
        end
      end

      if(count_param > 0)
        puts "All baskets are full. We couldn't find the place for #{count_param} apples"
      end
    else
      puts "All baskets are full. We couldn't find the place for #{count_param} apples"
    end
    puts 'Exiting add_apple_to_basket'
  end

  # Internal: fill_rate re-calculate as a percentage of the count of the associated records divided by the capacity of the basket.
  #
  # filled_rate - ()
  #
  # Returns correct filled rate

  def fill_rate_method(basket_id, variety_param, selected_basket_capacity)

    basket_ids = Apple.where('variety = ?', variety_param).pluck(:basket_id)
    
    baskets = Basket.where('id = ?', basket_ids)

    baskets_fillrate = 0;

    if !baskets.empty?
      baskets.each do |basket|
        baskets_fillrate += basket.fill_rate
      end
    end

    filled_rate = (baskets_fillrate/100)/selected_basket_capacity
  end
end