import android.app.Service
import android.content.Intent
import android.os.IBinder
import android.view.Surface
import io.flutter.embedding.engine.renderer.FlutterRenderer
import io.flutter.view.TextureRegistry
import com.pedro.library.base.DisplayBase
import com.pedro.library.rtmp.RtmpDisplay
import com.pedro.common.ConnectChecker
import com.pedro.rtmp.rtmp.RtmpCamera1

// Assuming MyConnectChecker is defined elsewhere
class RtmpService : Service() {

    private var displayBase: DisplayBase? = null
    private var flutterTextureId: Long = -1L
    private var surface: Surface? = null
    private var renderer: FlutterRenderer? = null

    override fun onStartCommand(intent: Intent, flags: Int, startId: Int): Int {
        when (intent.action) {
            "Start" -> {
                val url = intent.getStringExtra("url")
                startStream(url)
            }
            "Stop" -> stopStream()
        }
        return START_STICKY
    }

    private fun startStream(url: String?) {
        if (url != null && renderer != null) {
            // Initialize RTMP Display
            displayBase = RtmpDisplay(this, true, MyConnectChecker())

            // Prepare video
            val result = displayBase?.prepareVideo(1280, 720, 30, 3000 * 1024, false, 0) ?: false
            if (result) {
                // Start streaming
                displayBase?.startStream(url)

                // Use Flutter Texture
                renderer?.textureRegistry?.createSurfaceTexture()?.let { entry ->
                    flutterTextureId = entry.id()
                    surface = Surface(entry.surfaceTexture())
                    displayBase?.glInterface?.setSurface(surface)  // Set surface to the RTMP display
                }
            }
        }
    }

    private fun stopStream() {
        // Stop the stream
        displayBase?.stopStream()

        // Release the surface
        surface?.release()
        stopForeground(true)
    }

    override fun onBind(intent: Intent?): IBinder? {
        return null
    }

    // Set the FlutterRenderer
    fun setFlutterRenderer(renderer: FlutterRenderer) {
        this.renderer = renderer
    }

    // Helper to start streaming from Flutter side
    fun startStreamingFromFlutter(url: String) {
        val intent = Intent(this, RtmpService::class.java).apply {
            action = "Start"
            putExtra("url", url)
        }
        startService(intent)
    }

    // Helper to stop streaming from Flutter side
    fun stopStreamingFromFlutter() {
        val intent = Intent(this, RtmpService::class.java).apply {
            action = "Stop"
        }
        startService(intent)
    }
}
