//+------------------------------------------------------------------+
//|                                                      defines.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                        https://order-button.com/ |
//+------------------------------------------------------------------+


#ifdef IS_DEBUG
   #define __Digits          Env::get<int>("DIGITS", _Digits)
   #define __Point           Env::get<double>("POINT", _Point)
   #define __Period          Env::get<int>("PERIOD", _Period)
   #define __Symbol          Env::get<string>("SYMBOL", _Symbol)
   #define __AccountBalance  Env::get<double>("ACCOUNT_BALANCE", AccountBalance())
   #define __AccountCurrency Env::get<string>("ACCOUNT_CURRENCY", AccountCurrency())
   #define __LOTSIZE         Env::get<double>("LOTSIZE", MarketInfo(__Symbol, MODE_LOTSIZE))
   #define __LOTSTEP         Env::get<double>("LOTSTEP", MarketInfo(__Symbol, MODE_LOTSTEP))
   #define __MINLOT          Env::get<double>("MINLOT", MarketInfo(__Symbol, MODE_MINLOT))
   #define __MAXLOT          Env::get<double>("MAXLOT", MarketInfo(__Symbol, MODE_MAXLOT))
   #define __STOPLEVEL       Env::get<double>("STOPLEVEL", MarketInfo(__Symbol, MODE_STOPLEVEL))
   #define __FREEZELEVEL     Env::get<double>("FREEZELEVEL", MarketInfo(__Symbol, MODE_FREEZELEVEL))
#else
   #define __Digits          _Digits
   #define __Point           _Point
   #define __Period          _Period
   #define __Symbol          _Symbol
   #define __AccountBalance  AccountBalance()
   #define __AccountCurrency AccountCurrency()
   #define __LOTSIZE         MarketInfo(__Symbol, MODE_LOTSIZE)
   #define __LOTSTEP         MarketInfo(__Symbol, MODE_LOTSTEP)
   #define __MINLOT          MarketInfo(__Symbol, MODE_MINLOT)
   #define __MAXLOT          MarketInfo(__Symbol, MODE_MAXLOT)
   #define __STOPLEVEL       MarketInfo(__Symbol, MODE_STOPLEVEL)
   #define __FREEZELEVEL     MarketInfo(__Symbol, MODE_FREEZELEVEL)
#endif
