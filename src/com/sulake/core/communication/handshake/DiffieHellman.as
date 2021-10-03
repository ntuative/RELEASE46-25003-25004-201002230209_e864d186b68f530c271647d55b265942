package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1474:BigInteger;
      
      private var var_1037:BigInteger;
      
      private var var_1969:BigInteger;
      
      private var var_1473:BigInteger;
      
      private var var_1968:BigInteger;
      
      private var var_1645:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1474 = param1;
         var_1969 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1968.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1473 = new BigInteger();
         var_1473.fromRadix(param1,param2);
         var_1968 = var_1473.modPow(var_1037,var_1474);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1645.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         var_1037 = new BigInteger();
         var_1037.fromRadix(param1,param2);
         var_1645 = var_1969.modPow(var_1037,var_1474);
         return true;
      }
   }
}
