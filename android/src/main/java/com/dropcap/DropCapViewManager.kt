package com.dropcap

import android.graphics.Color
import com.facebook.react.module.annotations.ReactModule
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.annotations.ReactProp

@ReactModule(name = DropCapViewManager.NAME)
class DropCapViewManager :
  DropCapViewManagerSpec<DropCapView>() {
  override fun getName(): String {
    return NAME
  }

  public override fun createViewInstance(context: ThemedReactContext): DropCapView {
    return DropCapView(context)
  }

  @ReactProp(name = "color")
  override fun setColor(view: DropCapView?, color: String?) {
    view?.setBackgroundColor(Color.parseColor(color))
  }

  companion object {
    const val NAME = "DropCapView"
  }
}
