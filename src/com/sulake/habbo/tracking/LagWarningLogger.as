package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LagWarningReportMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LagWarningLogger
   {
      
      public static const const_821:int = 0;
      
      public static const WARNING_TYPE_CHAT_DELAY:int = 1;
       
      
      private var var_1173:Boolean = true;
      
      private var var_1124:int = 0;
      
      private var var_764:int = 0;
      
      private var var_1122:int = 0;
      
      private var var_763:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_1120:int = 15;
      
      private var var_176:IHabboConfigurationManager;
      
      private var _connection:IConnection;
      
      private var var_1123:int = 60;
      
      public function LagWarningLogger()
      {
         super();
         var_1122 = getTimer();
      }
      
      public function logWarnings() : void
      {
         if(!var_1173)
         {
            return;
         }
         if(nothingToReport)
         {
            return;
         }
         var _loc1_:LagWarningReportMessageComposer = new LagWarningReportMessageComposer(var_764,var_763);
         if(_connection != null)
         {
            _connection.send(_loc1_);
         }
         resetLog();
         ++var_1124;
      }
      
      private function get nothingToReport() : Boolean
      {
         return var_764 == 0 && var_763 == 0;
      }
      
      private function resetLog() : void
      {
         var_764 = 0;
         var_763 = 0;
      }
      
      public function update(param1:uint) : void
      {
         if(!var_1173)
         {
            return;
         }
         if(getTimer() - var_1122 > var_1123 * 1000 && var_1124 < var_1120)
         {
            var_1122 = getTimer();
            logWarnings();
         }
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_176 = param1;
         var_1123 = int(var_176.getKey("lagwarninglog.interval","60"));
         var_1120 = int(var_176.getKey("lagwarninglog.reportlimit","15"));
         var_1173 = Boolean(int(var_176.getKey("lagwarninglog.enabled","1")));
      }
      
      public function registerWarning(param1:int) : void
      {
         switch(param1)
         {
            case WARNING_TYPE_CHAT_DELAY:
               var_763 += 1;
            case const_821:
               var_764 += 1;
         }
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
