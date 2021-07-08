{-# LANGUAGE CPP #-}
#if __GLASGOW_HASKELL__ >= 710
{-# LANGUAGE PatternSynonyms #-}
#endif
module Data.Time.Calendar.MonthDay.Compat (
    MonthOfYear, DayOfMonth, DayOfYear,
#if __GLASGOW_HASKELL__ >= 710
    -- patterns
#endif
    monthAndDayToDayOfYear,
    monthAndDayToDayOfYearValid,
    dayOfYearToMonthAndDay,
    monthLength,
) where

import Data.Time.Orphans ()

import Data.Time.Calendar.MonthDay

#if !MIN_VERSION_time(1,11,0)
import Data.Time.Calendar.Types
#endif

{-
#if !MIN_VERSION_time(1,12,0)
#if __GLASGOW_HASKELL__ >= 710
pattern January :: MonthOfYear
pattern January = 1

pattern February :: MonthOfYear
pattern February = 2

pattern March :: MonthOfYear
pattern March = 3

pattern April :: MonthOfYear
pattern April = 4

pattern May :: MonthOfYear
pattern May = 5

pattern June :: MonthOfYear
pattern June = 6

pattern July :: MonthOfYear
pattern July = 7

pattern August :: MonthOfYear
pattern August = 8

pattern September :: MonthOfYear
pattern September = 9

pattern October :: MonthOfYear
pattern October = 10

pattern November :: MonthOfYear
pattern November = 11

-- | The twelve 'MonthOfYear' patterns form a @COMPLETE@ set.
pattern December :: MonthOfYear
pattern December = 12

#if __GLASGOW_HASKELL__ >= 802
{-# COMPLETE January, February, March, April, May, June, July, August, September, October, November, December #-}
#endif
#endif
#endif
-}
