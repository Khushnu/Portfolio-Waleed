package com.example.flutter_application_2

import android.graphics.SurfaceTexture
import android.os.Handler
import android.os.Looper
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.renderer.FlutterRenderer
import io.flutter.plugin.common.MethodChannel
import io.flutter.view.TextureRegistry
import com.pedro.rtplibrary.view.OpenGlView
import android.content.Intent
import androidx.activity.ComponentActivity
import io.flutter.embedding.android.FlutterActivity
import com.example.flutter_application_2.RtmpService
import com.pedro.library.rtmp.RtmpDisplay
import com.pedro.library.base.DisplayBase
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity : FlutterActivity() {
    private var textureEntry: TextureRegistry.SurfaceTextureEntry? = null
    private var rtmpService: RtmpService? = null

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "com.example.rtmp").setMethodCallHandler { call, result ->
            when (call.method) {
                "createTexture" -> {
                    val textureEntry = flutterEngine.renderer.textureRegistry.createSurfaceTexture()
                    this.textureEntry = textureEntry
                    result.success(textureEntry.id())
                }
                "startStream" -> {
                    val url = call.argument<String>("url")
                    startRTMPStream(url, textureEntry?.surfaceTexture())
                    result.success(null)
                }
                "stopStream" -> {
                    stopRTMPStream()
                    result.success(null)
                }
                else -> result.notImplemented()
            }
        }
    }

    private fun startRTMPStream(url: String?, surfaceTexture: SurfaceTexture?) {
        if (url != null && surfaceTexture != null) {
            // Initialize OpenGlView and prepare the stream
            val openGlView = OpenGlView(this)
            openGlView.init()
            openGlView.addMediaCodecSurface(surfaceTexture)

            // Initialize and start RTMP service
            rtmpService = RtmpService()
            rtmpService?.setFlutterRenderer(flutterEngine?.renderer)
            rtmpService?.prepare(openGlView)
            rtmpService?.startStream(url)
        }
    }

    private fun stopRTMPStream() {
        rtmpService?.stopStream()
    }
}
