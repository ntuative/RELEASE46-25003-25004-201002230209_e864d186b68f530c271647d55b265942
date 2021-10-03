package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_943:int = 0;
      
      private var var_1210:int = 0;
      
      private var var_1638:String = "";
      
      private var var_942:int = 0;
      
      private var var_1907:String = "";
      
      private var var_1909:int = 0;
      
      private var var_1384:String = "";
      
      private var var_1908:int = 0;
      
      private var var_1910:int = 0;
      
      private var var_1639:String = "";
      
      private var var_1911:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1908 = param1;
         var_1639 = param2;
         var_1384 = param3;
         var_1638 = param4;
         var_1907 = param5;
         if(param6)
         {
            var_1210 = 1;
         }
         else
         {
            var_1210 = 0;
         }
         var_1909 = param7;
         var_1910 = param8;
         var_942 = param9;
         var_1911 = param10;
         var_943 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1908,var_1639,var_1384,var_1638,var_1907,var_1210,var_1909,var_1910,var_942,var_1911,var_943];
      }
      
      public function dispose() : void
      {
      }
   }
}
