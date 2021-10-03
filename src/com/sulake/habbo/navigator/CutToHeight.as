package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToHeight implements BinarySearchTest
   {
       
      
      private var var_168:String;
      
      private var var_413:int;
      
      private var var_189:ITextWindow;
      
      public function CutToHeight()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_168 = param1;
         var_189 = param2;
         var_413 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_189.text = var_168.substring(0,param1) + "...";
         return var_189.textHeight > var_413;
      }
   }
}
