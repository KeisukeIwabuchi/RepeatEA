//+------------------------------------------------------------------+
//|                                                      defines.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                        https://order-button.com/ |
//+------------------------------------------------------------------+
#property copyright "Copyright 2017, Keisuke Iwabuchi"
#property link      "https://order-button.com/"
#property strict


/** @var int RETRY_MAX  Maximum repeat count when order function failed. */
#define RETRY_MAX      3


/** @var int RETRY_INTERVAL  Repeat interval. [millisecond] */
#define RETRY_INTERVAL 1000