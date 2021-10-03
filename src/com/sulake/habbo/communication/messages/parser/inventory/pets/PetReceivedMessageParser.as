package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1046:PetData;
      
      private var var_1535:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1535 = param1.readBoolean();
         var_1046 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1535 + ", " + var_1046.id + ", " + var_1046.name + ", " + pet.figure + ", " + var_1046.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1535;
      }
      
      public function get pet() : PetData
      {
         return var_1046;
      }
   }
}
