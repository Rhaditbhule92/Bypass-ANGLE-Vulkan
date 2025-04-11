#!/system/bin/sh

clear echo "=============================================" echo " APPLYING ADVANCED GPU + ANGLE OPTIMIZATION..." echo "============================================="

1. ANGLE Vulkan Core & Backend

setprop persist.sys.angle.use_vulkan true setprop persist.sys.angle.force_vulkan true setprop persist.sys.angle.default_backend vulkan setprop persist.sys.angle.default_driver angle setprop persist.sys.angle.backend vulkan setprop persist.sys.angle.gles_backend vulkan setprop persist.sys.angle.vulkan.backend true setprop persist.sys.angle.vulkan.validation 0 setprop persist.sys.angle.device_type default setprop persist.sys.angle.gl_fallback false setprop persist.sys.angle.allow_software_fallback false setprop persist.sys.angle.allow_render_pass true setprop persist.sys.angle.disable_gpu_fallback false setprop persist.sys.angle.prefer_system_angle true setprop persist.sys.angle.support_non_angle_apps false setprop persist.sys.angle.egl_disable_context_virtualization false setprop persist.sys.angle.disable_swiftshader true setprop persist.sys.angle.feature_overrides_enabled "disable_dual_source_blending,disable_front_face_culling" setprop persist.sys.angle.vulkan.features.override dynamic_rendering,fragment_shading_rate,pipeline_robustness,robustness2,descriptor_indexing setprop persist.sys.angle.feature.override.force_enable_all true setprop persist.sys.angle.gpu.capture 0 setprop persist.sys.game_driver.angle_all_apps true setprop persist.sys.graphics.renderer ANGLE setprop persist.sys.angle.vulkan true setprop persist.sys.angle.feature_overrides_enabled VulkanFromANGLE,VulkanUseD32S8,VulkanUseExplicitSync2,VulkanAsyncCommandBufferSubmission setprop persist.sys.angle.feature_overrides_disabled ForceRobustResourceInit,EmulatePrimitiveRestartFixedIndex,ForceInitShaderVariables setprop persist.sys.angle.feature.override.enableParallelCompileAndLink true setprop persist.sys.angle.feature.override.supportsPipelineCreationFeedback true setprop persist.sys.angle.feature.override.allowMultipleLinearSamplerTypes true setprop persist.sys.angle.feature.override.deferFlushUntilEndRenderPass true setprop persist.sys.angle.feature.override.emulateCopyTexImage2DFromRenderbuffer true setprop persist.sys.angle.feature.override.enableGraphicsPipelineLibrary true setprop persist.sys.angle.feature.override.supportsNonUniformDescriptorIndexing true setprop persist.sys.angle.feature.override.logMemoryReportStats true setprop persist.sys.angle.feature.override.dumpShaderSource true setprop persist.sys.angle.feature.override.captureFrameTimingEvents true

2. ANGLE Optimization & Debug

echo "Enabling ANGLE Optimization & Debug Options..." setprop persist.sys.angle.enable_backpressure true setprop persist.sys.angle.enable_perf_monitoring true setprop persist.sys.angle.angle_feature_overrides_enabled true setprop persist.sys.angle.force_angle true setprop persist.sys.angle.enable_gpu_trace true setprop persist.sys.angle.verbose_validation false setprop persist.sys.angle.profiling_enabled true setprop persist.sys.angle.benchmark_mode true setprop persist.sys.angle.enable_validation false setprop persist.sys.angle.enable_validation_layers false setprop persist.sys.angle.debug_layer true setprop persist.sys.angle.enable_debug_layers true

3. ANGLE Extended Activation

echo "Activating Extended ANGLE Capabilities..." setprop persist.sys.angle.use_angle true setprop persist.sys.angle.override_blacklist true setprop persist.sys.angle.features.allow_backend_switching false setprop persist.sys.angle.allow_capture_replay true setprop persist.sys.angle.allow_vulkan_layers true setprop persist.sys.angle.defer_program_binary true setprop persist.sys.angle.use_external_memory true setprop persist.sys.angle.use_multiple_contexts true setprop persist.sys.angle.enable_transient_resources true setprop persist.sys.angle.enable_async_buffer_queue true

4. GPU Composition / Rendering

echo "Enabling GPU Composition Rendering..." setprop persist.sys.hwcomposition.force_gpu true setprop persist.sys.sf.gpu_compose_delay 0 setprop persist.sys.gpu.benchmark_mode true setprop persist.sys.gpu.low_latency_mode true setprop persist.sys.gpu.allow_async_queue true setprop persist.sys.gpu.pipeline_cache_enabled true

5. HWUI & Skia GPU (Fallback to skiagl)

echo "Applying HWUI GPU Optimizations..." setprop persist.sys.hwui.enabled true setprop persist.sys.hwui.force_gpu_rendering true setprop debug.hwui.renderer skiagl setprop debug.hwui.use_vulkan true setprop debug.hwui.disable_vulkan_defer true setprop debug.hwui.skia_atrace_enabled false setprop persist.sys.skia.renderer enabled setprop persist.sys.skia.vulkan enabled setprop persist.sys.skia.disable_mtl false setprop debug.hwui.overdraw false setprop persist.sys.hwui.drop_shadow_cache_size 6 setprop persist.sys.hwui.texture_cache_size 72 setprop persist.sys.hwui.layer_cache_size 48 setprop persist.sys.hwui.gradient_cache_size 4 setprop persist.sys.hwui.path_cache_size 32 setprop persist.sys.ui.hw.force true setprop persist.sys.ui.hw.debug_layer false setprop persist.sys.render.threaded true setprop persist.sys.render.gpu true setprop persist.sys.ui.smooth_scroll true setprop persist.sys.ui.rendering_priority balanced

6. Thermal Control Disable

echo "Disabling Thermal Controls..." setprop persist.sys.thermal.data false setprop persist.sys.thermal.config false setprop persist.sys.thermal.status disable setprop persist.sys.thermal_event false setprop persist.sys.ignore_dexopt_thermal true setprop persist.sys.dalvik.dexopt.no_throttle true setprop persist.sys.dexopt.ignore_thermal true setprop persist.sys.thermal.off true setprop persist.sys.cpu.freq.lock true setprop persist.sys.dalvik.vm.dex2oat_cpu_set 0,1,2,3,4,5,6,7

7. Watchdog Disable

echo "Disabling System Watchdog..." setprop persist.sys.watchdog 0 setprop persist.sys.watchdog_en 0

8. WebView Vulkan + GPU Raster

echo "Optimizing WebView with Vulkan Backend..." setprop persist.sys.webgl2.force_enabled true setprop persist.sys.webgpu.enabled true setprop persist.sys.webgpu.backend vulkan setprop persist.sys.fflag.override.WebViewVulkan true setprop persist.sys.webview.gpu_rasterization true setprop persist.sys.webview.vulkan true setprop persist.sys.webview.force_enable_gpu true setprop persist.sys.webview.disable_thermal_throttling true setprop persist.sys.fflag.override.WebGL2ComputeContext true setprop persist.sys.webview.webgl2 true setprop persist.sys.webview.high_performance_mode true setprop persist.sys.webview.tile_size 256 setprop persist.sys.webview.max_active_layers 32 setprop persist.sys.webview.angle_backend vulkan setprop persist.sys.webview.hw true setprop persist.sys.webview.render_process_limit 4 setprop persist.sys.webview.disable_overlays false setprop persist.sys.webview.enable-features "Vulkan,WebGPU,WebGL2ComputeContext,SharedArrayBuffer,UseSkiaRenderer,UseWebGPU" setprop persist.sys.webview.disable-features "AndroidSurfaceControl"

9. WebView Boost + Bypass

echo "Activating WebView Boost..." setprop persist.sys.webview.multi_thread true setprop persist.sys.webview.optimized_rendering true setprop persist.sys.webview.enable_async_paint true setprop persist.sys.webview.enable_unlimited_cache true setprop persist.sys.webview.disable_sandbox true setprop persist.sys.webview.debug.enable true setprop persist.sys.webview.debug.level verbose

10. Vulkan Extensions & Features

echo "Enabling Vulkan Extensions..." setprop persist.sys.vulkan.dynamic_rendering 1 setprop persist.sys.vulkan.enable_dynamic_rendering 1 setprop persist.sys.vulkan.enable_pipeline_library 1 setprop persist.sys.vulkan.enable_shader_object 1 setprop persist.sys.vulkan.enable_robustness2 1 setprop persist.sys.vulkan.enable_fragment_density 1 setprop persist.sys.vulkan.device_features dynamic_rendering,descriptor_indexing,robustness2,fragment_shading_rate,pipeline_robustness setprop persist.sys.vulkan.features.force_enable 1 setprop persist.sys.vulkan.enable_all_extensions true setprop persist.sys.gpu.support_fragment_shading_rate true setprop persist.sys.gpu.support_pipeline_robustness true setprop persist.sys.gpu.enable_dynamic_rendering true setprop persist.sys.gpu.experimental_features 1 setprop persist.sys.gpu.robustness2 1 setprop persist.sys.gpu.fragment_density 1 setprop persist.sys.vulkan.api_version 1.3 setprop persist.sys.vulkan.support true

11. Final UI & Performance Tweaks

echo "Finalizing UI + Rendering Tweaks..." setprop persist.sys.hwui.use_vulkan true setprop persist.sys.sf.color_saturation 1.0 setprop persist.sys.skia.use_dmsaa_for_tiles true setprop persist.sys.ui.hw true setprop persist.sys.sf.enable_hwc_vds false setprop persist.sys.sf.low_latency_vsync true setprop persist.sys.chrome.raster.threads 4

12. CPU & Network Optimization

echo "CPU Boost + Network Enhancements..." setprop persist.sys.cpufreq.max 2500000 setprop persist.sys.cpufreq.min 1200000 setprop persist.sys.cpufreq.capacity 1200 setprop persist.sys.powerhal.interactive 1 setprop persist.sys.powerhal.boost 1 setprop persist.sys.enable_scheduler_boost 1 setprop persist.sys.cpu_boost 1

13. Network / Radio LTE Tweaks

setprop persist.radio.data_con_type lte setprop persist.radio.force_lte_only true setprop persist.sys.radio.ims_volte true setprop persist.radio.data_ltd_sys_enable true setprop persist.radio.force_lte true setprop persist.sys.network.type LTE setprop persist.radio.lte_vrte_ltd true setprop persist.radio.prefer_4g true setprop persist.sys.ping.enabled false setprop persist.radio.apm_sim_not_pwdn true setprop persist.radio.network.mode 11 setprop persist.radio.prefer.network 9 setprop persist.vendor.radio.prefer.network 9

14. Logging & Kernel Cleanup

echo "Silencing Logs & Cleaning Kernel Debug..." setprop persist.sys.pwrd_log false setprop persist.log.tag "*:S" setprop persist.sys.powerhal.log.enabled 0 setprop persist.sys.kernel_log_level 0 setprop persist.sys.debug.level 0 setprop persist.sys.zram.size 268435456 setprop persist.sys.zram.disk_size 268435456 setprop persist.sys.bionic.reserved_cpu 1

DONE

echo "=============================================" echo " ANGLE + VULKAN PERFORMANCE BOOST APPLIED! " echo "     Reboot device for full effect.         " echo "============================================="

