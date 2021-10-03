package com.sulake.core.utils
{
   import deng.fzip.FZip;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   
   public class ZipLoader extends LibraryLoader
   {
       
      
      private var var_399:FZip;
      
      private var var_1240:Array;
      
      private var var_1999:uint = 0;
      
      private var var_837:int = 0;
      
      private var var_2364:Array;
      
      public function ZipLoader(param1:Boolean)
      {
         super(param1);
         var_1240 = new Array();
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         Logger.log(param1.text);
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,0));
      }
      
      public function get resources() : Array
      {
         return var_1240;
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.target as LoaderInfo;
         var _loc3_:String = getQualifiedClassName(var_15.content);
         var_1240.push(var_15.contentLoaderInfo.applicationDomain.getDefinition(_loc3_));
         ++var_837;
         if(var_1240.length == var_1999)
         {
            var_15.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoaderComplete);
            var_15.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,0));
         }
         else
         {
            var_15.loadBytes(var_399.getFileAt(var_837).content);
         }
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null, param3:int = 1) : void
      {
         var_314 = param1;
         if(var_399)
         {
            var_399.close();
         }
         var_399 = new FZip();
         var_399.addEventListener(Event.COMPLETE,onComplete);
         var_399.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_399.addEventListener(ProgressEvent.PROGRESS,onProgress);
         var_399.load(var_314);
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,0));
      }
      
      private function onComplete(param1:Event) : void
      {
         var_837 = 0;
         var_1999 = var_399.getFileCount();
         removeEventListeners();
         var_15.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoaderComplete);
         var_15.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_15.loadBytes(var_399.getFileAt(var_837).content);
      }
   }
}
