#if os(Linux)
    import Glibc
#else
    import Darwin.C
#endif

final class Lock {
    private var mutex = pthread_mutex_t()

    init() {
        let result = pthread_mutex_init(&mutex, nil)

        guard result == 0 else {
            fatalError("Failed to initialize Lock: \(result)")
        }
    }

    deinit {
        pthread_mutex_destroy(&mutex)
    }

    func withLock<T>(_ closure: () throws -> (T)) rethrows -> T {
        acquire()
        defer { release() }
        return try closure()
    }

    func acquire() {
        let result = pthread_mutex_lock(&mutex)

        guard result == 0 else {
            fatalError("Failed to aquire Lock: \(result)")
        }
    }

    func release() {
        pthread_mutex_unlock(&mutex)
    }
}
