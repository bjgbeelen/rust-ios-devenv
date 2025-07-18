#[cfg(any(target_os = "ios",))]
#[unsafe(no_mangle)]
pub extern "C" fn foo(fd: c_int) -> c_int {
    static INITIALIZED: std::sync::Once = std::sync::Once::new();
    INITIALIZED.call_once(|| {
        OsLogger::new("com.company.app")
            .level_filter(LevelFilter::Trace)
            .init()
            .unwrap();
    });
    0
}
