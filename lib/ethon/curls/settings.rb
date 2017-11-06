module Ethon
  module Curl
    callback :callback, [:pointer, :size_t, :size_t, :pointer], :size_t
    callback :debug_callback, [:pointer, :debug_info_type, :pointer, :size_t, :pointer], :int
    callback :progress_callback, [:pointer, :long_long, :long_long, :long_long, :long_long], :int
    ffi_lib_flags :now, :global
    libs_to_load = ['libcurl', 'libcurl.so.4']
    libs_to_load.push('libcurl-4.dll') if RUBY_PLATFORM.include?('cygwin')
    ffi_lib libs_to_load
  end
end
