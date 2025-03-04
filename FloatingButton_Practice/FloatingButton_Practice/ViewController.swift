import UIKit
import SnapKit

class ViewController: UIViewController {

    lazy var stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 25
        view.alignment = .fill
        view.distribution = .fillEqually
        view.isHidden = true
        return view
    }()

    lazy var plusBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "plus.circle"), for: .normal)
        btn.addTarget(self, action: #selector(floatingBtnTapped), for: .touchUpInside)
        return btn
    }()
    
    lazy var writeBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "square.and.pencil"), for: .normal)
        return btn
    }()
    
    lazy var notesBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "note.text"), for: .normal)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        view.addSubview(stackView)
        view.addSubview(plusBtn)
        
        stackView.addArrangedSubview(writeBtn)
        stackView.addArrangedSubview(notesBtn)
        
        plusBtn.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(50)
            $0.bottom.equalToSuperview().inset(70)
            $0.width.height.equalTo(50)
        }
        
        stackView.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(50)
            $0.bottom.equalTo(plusBtn.snp.top).inset(20)
            $0.width.equalTo(50)
            $0.height.equalTo(100)
        }
    }
    
    @objc func floatingBtnTapped(){
        stackView.isHidden = !stackView.isHidden
    }
}

