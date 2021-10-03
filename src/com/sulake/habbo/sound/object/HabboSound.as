package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_940:SoundChannel = null;
      
      private var var_758:Boolean;
      
      private var var_941:Sound = null;
      
      private var var_714:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_941 = param1;
         var_941.addEventListener(Event.COMPLETE,onComplete);
         var_714 = 1;
         var_758 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_758;
      }
      
      public function stop() : Boolean
      {
         var_940.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_758 = false;
         var_940 = var_941.play(0);
         this.volume = var_714;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_714;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_940.position;
      }
      
      public function get length() : Number
      {
         return var_941.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_714 = param1;
         if(var_940 != null)
         {
            var_940.soundTransform = new SoundTransform(var_714);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_758 = true;
      }
   }
}
