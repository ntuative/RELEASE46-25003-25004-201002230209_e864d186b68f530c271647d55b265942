package com.sulake.habbo.session.furniture
{
   public class FurnitureData implements IFurnitureData
   {
      
      public static const const_1535:String = "e";
      
      public static const const_1432:String = "i";
      
      public static const const_1436:String = "s";
       
      
      private var _id:int;
      
      private var _title:String;
      
      private var _type:String;
      
      private var var_1888:int;
      
      private var var_1112:Array;
      
      private var var_1887:int;
      
      private var var_1890:int;
      
      private var var_1889:int;
      
      private var _name:String;
      
      private var var_1886:int;
      
      private var var_1117:String;
      
      public function FurnitureData(param1:String, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:String, param11:String)
      {
         super();
         _type = param1;
         _id = param2;
         _name = param3;
         var_1888 = param4;
         var_1886 = param5;
         var_1887 = param6;
         var_1890 = param7;
         var_1889 = param8;
         var_1112 = param9;
         _title = param10;
         var_1117 = param11;
      }
      
      public function get tileSizeY() : int
      {
         return var_1890;
      }
      
      public function get tileSizeZ() : int
      {
         return var_1889;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get title() : String
      {
         return _title;
      }
      
      public function get revision() : int
      {
         return var_1886;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get colourIndex() : int
      {
         return var_1888;
      }
      
      public function get tileSizeX() : int
      {
         return var_1887;
      }
      
      public function get colours() : Array
      {
         return var_1112;
      }
      
      public function get description() : String
      {
         return var_1117;
      }
   }
}
