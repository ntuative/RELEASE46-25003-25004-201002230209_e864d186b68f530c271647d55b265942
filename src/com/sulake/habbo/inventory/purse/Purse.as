package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1776:Boolean = false;
      
      private var var_1780:int = 0;
      
      private var var_1777:int = 0;
      
      private var var_1778:int = 0;
      
      private var var_1531:int = 0;
      
      private var var_1779:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1531 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1780;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1776;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1776 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1780 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1777 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1531;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1778 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1777;
      }
      
      public function get pixelBalance() : int
      {
         return var_1778;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1779 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1779;
      }
   }
}
