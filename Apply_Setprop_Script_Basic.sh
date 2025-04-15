#!/system/bin/sh

# ANGLE Vulkan Core & Backend
setprop persist.sys.angle.use_vulkan true
setprop persist.sys.angle.force_vulkan true
setprop persist.sys.angle.default_backend vulkan
setprop persist.sys.angle.default_driver angle
setprop persist.sys.angle.backend vulkan
setprop persist.sys.angle.gles_backend vulkan
setprop persist.sys.angle.vulkan.backend true
setprop persist.sys.angle.vulkan.validation 0
setprop persist.sys.angle.device_type default
setprop persist.sys.angle.gl_fallback false
setprop persist.sys.angle.allow_software_fallback false
setprop persist.sys.angle.allow_render_pass true
setprop persist.sys.angle.disable_gpu_fallback false
setprop persist.sys.angle.prefer_system_angle true
setprop persist.sys.angle.support_non_angle_apps false
setprop persist.sys.angle.egl_disable_context_virtualization false
setprop persist.sys.angle.disable_swiftshader true
setprop persist.sys.angle.feature_overrides_enabled "VulkanFromANGLE,VulkanUseD32S8,VulkanUseExplicitSync2,VulkanAsyncCommandBufferSubmission"
setprop persist.sys.angle.vulkan.features.override dynamic_rendering,fragment_shading_rate,pipeline_robustness,robustness2,descriptor_indexing
setprop persist.sys.angle.feature.override.force_enable_all true
setprop persist.sys.angle.gpu.capture 0
setprop persist.sys.game_driver.angle_all_apps true
setprop persist.sys.graphics.renderer ANGLE
setprop persist.sys.angle.vulkan true
setprop persist.sys.angle.feature_overrides_disabled ForceRobustResourceInit,EmulatePrimitiveRestartFixedIndex,ForceInitShaderVariables
setprop persist.sys.angle.feature.override.enableParallelCompileAndLink true
setprop persist.sys.angle.feature.override.supportsPipelineCreationFeedback true
setprop persist.sys.angle.feature.override.allowMultipleLinearSamplerTypes true
setprop persist.sys.angle.feature.override.deferFlushUntilEndRenderPass true
setprop persist.sys.angle.feature.override.emulateCopyTexImage2DFromRenderbuffer true
setprop persist.sys.angle.feature.override.enableGraphicsPipelineLibrary true
setprop persist.sys.angle.feature.override.supportsNonUniformDescriptorIndexing true
setprop persist.sys.angle.feature.override.logMemoryReportStats true
setprop persist.sys.angle.feature.override.dumpShaderSource true
setprop persist.sys.angle.feature.override.captureFrameTimingEvents true
setprop persist.sys.gfx.angle.supported 1
setprop persist.sys.gfx.angle.use_vulkan true
setprop persist.sys.gfx.angle.default_backend vulkan
setprop persist.sys.gfx.angle.game_driver_all true
setprop persist.sys.gfx.angle.gamemode 1
setprop persist.sys.gfx.angle.gpu.bypass true
setprop persist.sys.gpu.rendering true
setprop persist.sys.gpu.favor_performance 1
setprop persist.sys.vulkan.priority high
setprop persist.sys.gpu.boost_level max
setprop persist.sys.gpu.turbo_mode 1
setprop persist.sys.angle.vulkan.debug_layers false
setprop persist.sys.angle.vulkan.memory_optimization aggressive
setprop persist.sys.angle.vulkan.renderloop async
setprop persist.sys.angle.vulkan.swap_behavior fast

# ANGLE Vulkan Boost
setprop persist.sys.render.driver_angle_enabled true
setprop persist.sys.gpu.angle.driver.boost 1
setprop persist.sys.angle.render.direct true
setprop persist.sys.angle.debug.perf true
setprop persist.sys.vulkan.angle.compat 1

# ANGLE Optimization & Debug
setprop persist.sys.angle.enable_backpressure true
setprop persist.sys.angle.enable_perf_monitoring true
setprop persist.sys.angle.angle_feature_overrides_enabled true
setprop persist.sys.angle.force_angle true
setprop persist.sys.angle.enable_gpu_trace true
setprop persist.sys.angle.verbose_validation false
setprop persist.sys.angle.profiling_enabled true
setprop persist.sys.angle.benchmark_mode true
setprop persist.sys.angle.enable_validation false
setprop persist.sys.angle.enable_validation_layers false
setprop persist.sys.angle.debug_layer true
setprop persist.sys.angle.enable_debug_layers true

# Extended ANGLE Activation
setprop persist.sys.angle.use_angle true
setprop persist.sys.angle.override_blacklist true
setprop persist.sys.angle.features.allow_backend_switching false
setprop persist.sys.angle.allow_capture_replay true
setprop persist.sys.angle.allow_vulkan_layers true
setprop persist.sys.angle.defer_program_binary true
setprop persist.sys.angle.use_external_memory true
setprop persist.sys.angle.use_multiple_contexts true
setprop persist.sys.angle.enable_transient_resources true
setprop persist.sys.angle.enable_async_buffer_queue true

# GPU Composition
setprop persist.sys.hwcomposition.force_gpu true
setprop persist.sys.sf.gpu_compose_delay 0
setprop persist.sys.gpu.benchmark_mode true
setprop persist.sys.gpu.low_latency_mode true
setprop persist.sys.gpu.allow_async_queue true
setprop persist.sys.gpu.pipeline_cache_enabled true
setprop persist.sys.force_highendgfx true
setprop persist.sys.gpu.hardware_overdraw 0
setprop persist.sys.ui.hw_deferred true
setprop persist.sys.gpu.pipeline_flush aggressive
setprop persist.sys.gpu.prefer_async_compilation 1

# HWUI & Skia
setprop persist.sys.hwui.enabled true
setprop persist.sys.hwui.force_gpu_rendering true
setprop persist.sys.skia.renderer enabled
setprop persist.sys.skia.vulkan enabled
setprop persist.sys.skia.disable_mtl false
setprop persist.sys.hwui.drop_shadow_cache_size 6
setprop persist.sys.hwui.texture_cache_size 72
setprop persist.sys.hwui.layer_cache_size 48
setprop persist.sys.hwui.gradient_cache_size 4
setprop persist.sys.hwui.path_cache_size 32
setprop persist.sys.ui.hw.force true
setprop persist.sys.ui.hw.debug_layer false
setprop persist.sys.render.threaded true
setprop persist.sys.render.gpu true
setprop persist.sys.ui.smooth_scroll true
setprop persist.sys.ui.rendering_priority balanced

# Thermal
setprop persist.sys.thermal.data false
setprop persist.sys.thermal.config false
setprop persist.sys.thermal.status disable
setprop persist.sys.thermal_event false
setprop persist.sys.gpu.thermal_throttle off
setprop persist.sys.gpu.dynamic_power_limit off
setprop persist.sys.ignore_dexopt_thermal true
setprop persist.sys.dalvik.dexopt.no_throttle true
setprop persist.sys.dexopt.ignore_thermal true
setprop persist.sys.thermal.off true
setprop persist.sys.cpu.freq.lock true
setprop persist.sys.dalvik.vm.dex2oat_cpu_set 0,1,2,3,4,5,6,7

# Watchdog
setprop persist.sys.watchdog 0
setprop persist.sys.watchdog_en 0

# WebView Vulkan
setprop persist.sys.webgl2.force_enabled true
setprop persist.sys.webgpu.enabled true
setprop persist.sys.webgpu.backend vulkan
setprop persist.sys.fflag.override.WebViewVulkan true
setprop persist.sys.webview.gpu_rasterization true
setprop persist.sys.webview.vulkan true
setprop persist.sys.webview.force_enable_gpu true
setprop persist.sys.webview.disable_thermal_throttling true
setprop persist.sys.fflag.override.WebGL2ComputeContext true
setprop persist.sys.webview.webgl2 true
setprop persist.sys.webview.high_performance_mode true
setprop persist.sys.webview.tile_size 256
setprop persist.sys.webview.max_active_layers 32
setprop persist.sys.webview.angle_backend vulkan
setprop persist.sys.webview.hw true
setprop persist.sys.webview.render_process_limit 4
setprop persist.sys.webview.disable_overlays false
setprop persist.sys.webview.enable-features "Vulkan,WebGPU,WebGL2ComputeContext,SharedArrayBuffer,UseSkiaRenderer,UseWebGPU"
setprop persist.sys.webview.disable-features "AndroidSurfaceControl"
setprop persist.sys.webview.gpu_acceleration true
setprop persist.sys.chrome.angle_backend vulkan

# Additional Rendering Enhancer (Optional)
setprop persist.sys.gfx.low_latency true
setprop persist.sys.gfx.force_gpu true
setprop persist.sys.gfx.render_mode performance
setprop persist.sys.hwui.force_vulkan true
setprop persist.sys.hwui.render_thread true
setprop persist.sys.sf.enable_gl_backpressure 1
setprop persist.sys.sf.latch_unsignaled 1
setprop persist.sys.sf.use_phase_offsets_as_durations 1
setprop persist.sys.sf.phase_offset_ns 750000
setprop persist.sys.sf.present_time_offset_from_vsync_ns 1500000

# WebView Boost
setprop persist.sys.webview.multi_thread true
setprop persist.sys.webview.optimized_rendering true
setprop persist.sys.webview.enable_async_paint true
setprop persist.sys.webview.enable_unlimited_cache true
setprop persist.sys.webview.disable_sandbox true
setprop persist.sys.webview.debug.enable true
setprop persist.sys.webview.debug.level verbose

# Vulkan Extensions
setprop persist.sys.vulkan.dynamic_rendering 1
setprop persist.sys.vulkan.enable_dynamic_rendering 1
setprop persist.sys.vulkan.enable_pipeline_library 1
setprop persist.sys.vulkan.enable_shader_object 1
setprop persist.sys.vulkan.enable_robustness2 1
setprop persist.sys.vulkan.enable_fragment_density 1
setprop persist.sys.vulkan.device_features dynamic_rendering,descriptor_indexing,robustness2,fragment_shading_rate,pipeline_robustness
setprop persist.sys.vulkan.features.force_enable 1
setprop persist.sys.vulkan.enable_all_extensions true
setprop persist.sys.gpu.support_fragment_shading_rate true
setprop persist.sys.gpu.support_pipeline_robustness true
setprop persist.sys.gpu.enable_dynamic_rendering true
setprop persist.sys.gpu.experimental_features 1
setprop persist.sys.gpu.robustness2 1
setprop persist.sys.gpu.fragment_density 1
setprop persist.sys.vulkan.api_version 1.3
setprop persist.sys.vulkan.support true

# Final UI & Performance Tweaks
setprop persist.sys.hwui.use_vulkan true
setprop persist.sys.sf.color_saturation 1.0
setprop persist.sys.skia.use_dmsaa_for_tiles true
setprop persist.sys.ui.hw true
setprop persist.sys.sf.enable_hwc_vds false
setprop persist.sys.sf.low_latency_vsync true
setprop persist.sys.chrome.raster.threads 4

# CPU & Network
setprop persist.sys.cpufreq.max 2500000
setprop persist.sys.cpufreq.min 1200000
setprop persist.sys.cpufreq.capacity 1200
setprop persist.sys.powerhal.interactive 1
setprop persist.sys.powerhal.boost 1
setprop persist.sys.enable_scheduler_boost 1
setprop persist.sys.cpu_boost 1

# LTE Radio
setprop persist.radio.data_con_type lte
setprop persist.radio.force_lte_only true
setprop persist.sys.radio.ims_volte true
setprop persist.radio.data_ltd_sys_enable true
setprop persist.radio.force_lte true
setprop persist.sys.network.type LTE
setprop persist.radio.lte_vrte_ltd true
setprop persist.radio.prefer_4g true
setprop persist.sys.ping.enabled false
setprop persist.radio.apm_sim_not_pwdn true
setprop persist.radio.network.mode 11
setprop persist.radio.prefer.network 9
setprop persist.vendor.radio.prefer.network 9

<<<<<<< HEAD
# VoLTE & IMS Optimization
setprop persist.radio.volte.enable true
setprop persist.sys.cust.lte_config true
setprop persist.vendor.radio.imssetting 1
setprop persist.vendor.radio.jbims true
setprop persist.vendor.radio.rat_on 1
setprop persist.vendor.radio.data_ltd_sys_ind 1
setprop persist.radio.calls.on.ims true
setprop persist.radio.imsuseip 1

# Video Call Support
setprop persist.sys.videocall.avail true
setprop persist.vendor.radio.data_con_rprt 1

# Network + Voice Quality Enhancer
setprop persist.radio.voice_on_lte true
setprop persist.sys.telephony.vt_quality 1

=======
>>>>>>> 992262fbdfdc797479e164eb8153fcfe7ef9b585
# Logging Cleanup
setprop persist.sys.pwrd_log false
setprop persist.log.tag "*:S"
setprop persist.sys.powerhal.log.enabled 0
setprop persist.sys.kernel_log_level 0
setprop persist.sys.debug.level 0
setprop persist.sys.zram.size 268435456
setprop persist.sys.zram.disk_size 268435456
<<<<<<< HEAD
setprop persist.sys.bionic.reserved_cpu 1
=======
setprop persist.sys.bionic.reserved_cpu 1
>>>>>>> 992262fbdfdc797479e164eb8153fcfe7ef9b585
