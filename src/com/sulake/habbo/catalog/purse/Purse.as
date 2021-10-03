package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1777:int = 0;
      
      private var var_2008:int = 0;
      
      private var var_1893:int = 0;
      
      private var var_1779:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_2008;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2008 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1777 = param1;
      }
      
      public function get credits() : int
      {
         return var_1893;
      }
      
      public function get clubDays() : int
      {
         return var_1777;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1779 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1893 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1779;
      }
   }
}
