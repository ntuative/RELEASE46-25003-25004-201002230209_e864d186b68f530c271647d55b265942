package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_1032:String;
      
      private var _id:int;
      
      private var var_2180:String = "";
      
      private var var_2181:int;
      
      private var var_2182:String;
      
      private var var_2179:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_2181 = parseInt(param1.@pattern);
         var_1032 = String(param1.@gender);
         var_2179 = Boolean(parseInt(param1.@colorable));
         var_2180 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_2180;
      }
      
      public function get isColorable() : Boolean
      {
         return var_2179;
      }
      
      public function get gender() : String
      {
         return var_1032;
      }
      
      public function get patternId() : int
      {
         return var_2181;
      }
      
      public function get avatarFigureString() : String
      {
         return var_2182;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_2182 = param1;
      }
   }
}
