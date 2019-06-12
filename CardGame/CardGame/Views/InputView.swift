import Foundation

class InputView: TextView {
    
    func ask(_ something: String) -> String {
        print("\(something): ", terminator: "")
        return readLine() ?? ""
    }
    
    /// 선택지에 번호를 붙여 텍스트로 나타냅니다.
    private func show(options: [String]) {
        for index in options.indices {
            show("\(index + 1). \(options[index])")
        }
    }
    
    func askForChoice(options: [String]) -> Int {
        show(options: options)
        // 제공된 선택지 중 유효한 선택지가 선택될 때 까지 반복합니다.
        while true {
            guard let choice = Int(ask("> ")),
                (1...options.count).contains(choice) else {
                    show("유효하지 않은 선택입니다. 다시 입력하세요.")
                    continue
            }
            return choice
        }
    }
}