# Odin Project - Stock Picker

Create a method called *Stock_picker* that takes an array of stock prices, one for each day. The return a pair of days representing the days to buy and sell to maximize profit.

It needs to buy before it can sell.
Plan for the lowest day being the last and the highest day being the first.

## Pseudocode
My initial thought is to assume we buy on the first day. Then loop through the rest of the array finding the difference. The largest difference will get saved. Then assume we buy on the second day. Again, loop through the remainder. If this difference is larger than the previous, it was a better deal and will replace the original outcome. Then return an array of the final best deal.

FOR EACH day in the array
    SET the current day to _buy_
    FOR EACH subsequent day
        SET that day to _sell_
        SET _profit_ equal to _sell_ - _buy_
        IF _profit_ is greater than _maxProfit_
            THEN SET _maxProfit_ equal to _profit_
        END IF
    END FOR EACH
END FOR EACH
RETURN _maxProfit_