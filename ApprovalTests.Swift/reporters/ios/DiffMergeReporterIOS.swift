import Foundation

#if os(iOS)

class DiffMergeReporter: GenericDiffReporter {
    init() {
        super.init(programPath: "/Applications/DiffMerge.app/Contents/MacOS/DiffMerge", arguments: { received, approved in
            ["--nosplash", received, approved]
        })
    }
}

#endif