  import UIKit
  import PlaygroundSupport
  import SpriteKit
  
  public class InfinityStones : UIView {
    
    var QuestionLabel = UILabel()
    var BackgroundImage = UIImageView()
    var Choice1 = UIButton()
    var Choice2 = UIButton()
    var Choice3 = UIButton()
    var Choice4 = UIButton()
    var ViewBar = UniverseBar(AtViewNumber: 2)
    var BarView = SKView()
    
    
    public  init(scene: UIView) {
       super.init(frame: CGRect(x: 0, y: 0, width: 720, height: 580))
      ViewSetup()
        IntializeButtons()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func ViewSetup(){
        
        QuestionLabel.translatesAutoresizingMaskIntoConstraints = false
        QuestionLabel.font = UIFont(name: "System", size: 180)
        QuestionLabel.text = "Just like the Infinity stones, which Number System made all Digital Super Life possible, \ngiving power to all our Computer and Digital Dveices ?"
        QuestionLabel.textColor = UIColor.red
        
        BackgroundImage.translatesAutoresizingMaskIntoConstraints = false
        BackgroundImage.image = UIImage(named: "886532.jpg")
        BackgroundImage.contentMode = .scaleAspectFill
        
        self.addSubview(BackgroundImage)
        self.addSubview(QuestionLabel)
        BarView.presentScene(ViewBar)
        self.addSubview(BarView)
        NSLayoutConstraint.activate([
            
            QuestionLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            QuestionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            QuestionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10) , QuestionLabel.heightAnchor.constraint(equalToConstant: 200)
            ])
        
        
        
     
        
        NSLayoutConstraint.activate([
            BackgroundImage.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.0),
            BackgroundImage.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1.0),
            BackgroundImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            BackgroundImage.centerYAnchor.constraint(equalTo: self.centerYAnchor)
            ])
        ViewBar = UniverseBar(current: 2, frame: CGRect(x: 0, y: 0, width: self.bounds.width * 0.75, height: 60))
    }
        
        
        

    
        
        
    
    
    
    func IntializeButtons(){
        
        Choice1.translatesAutoresizingMaskIntoConstraints = false
        Choice2.translatesAutoresizingMaskIntoConstraints = false
        Choice3.translatesAutoresizingMaskIntoConstraints = false
        Choice4.translatesAutoresizingMaskIntoConstraints = false
    
        Choice1.setTitle("Octal Number System", for: .normal)
        Choice2.setTitle("Decimal Number System", for: .normal)
        Choice3.setTitle("Binary Number System", for: .normal)
        Choice4.setTitle("Qubits", for: .normal)
        Choice1.setTitleColor(UIColor.black, for: .normal)
        Choice2.setTitleColor(UIColor.black, for: .normal)
        Choice3.setTitleColor(UIColor.black, for: .normal)
        Choice4.setTitleColor(UIColor.black, for: .normal)
        
        
        Choice1.layer.cornerRadius = 15
        Choice1.clipsToBounds = true
        Choice2.layer.cornerRadius = 15
        Choice2.clipsToBounds = true
        Choice3.layer.cornerRadius = 15
        Choice3.clipsToBounds = true
        Choice4.layer.cornerRadius = 15
        Choice4.clipsToBounds = true
        Choice1.backgroundColor = UIColor.white
        Choice2.backgroundColor = UIColor.white
        Choice3.backgroundColor = .white
        Choice4.backgroundColor = .white
        Choice1.addTarget(self, action: #selector(Choice1Clicked), for: .touchUpInside)
        Choice2.addTarget(self, action: #selector(Choice2Clicked), for: .touchUpInside)
        Choice3.addTarget(self, action: #selector(Choice3Clicked), for: .touchUpInside)
        Choice4.addTarget(self, action: #selector(Choice4Clicked), for: .touchUpInside)
        
        self.addSubview(Choice1)
        self.addSubview(Choice2)
        self.addSubview(Choice3)
        self.addSubview(Choice4)
        
        NSLayoutConstraint.activate([
            // choice 2 button constraints
            Choice2.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            Choice2.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -35),
            Choice2.widthAnchor.constraint(equalToConstant: 200),
            Choice2.heightAnchor.constraint(equalToConstant: 45),
            
            // choice 1 button constraints
            Choice1.leadingAnchor.constraint(equalTo: Choice2.leadingAnchor, constant: 0),
            Choice1.bottomAnchor.constraint(equalTo: Choice2.topAnchor, constant: -45),
            Choice1.widthAnchor.constraint(equalTo: Choice2.widthAnchor, multiplier: 1.0),
            Choice1.heightAnchor.constraint(equalTo: Choice2.heightAnchor, multiplier: 1.0),
            
            
            //Choice 4 Constraints
            Choice4.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -35),
            Choice4.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -35),
            Choice4.widthAnchor.constraint(equalToConstant: 200),
            Choice4.heightAnchor.constraint(equalToConstant: 45),
            
            //Choice 3 Constraint
            Choice3.trailingAnchor.constraint(equalTo: Choice4.trailingAnchor, constant: 0),
            Choice3.bottomAnchor.constraint(equalTo: Choice4.topAnchor, constant: -45),
            Choice3.widthAnchor.constraint(equalTo: Choice4.widthAnchor, multiplier: 1.0),
            Choice3.heightAnchor.constraint(equalTo: Choice4.heightAnchor, multiplier: 1.0)
            
            ])
        
        
    }
    
    
    
    @objc func ButtonPressed() {
        
        PlaygroundPage.current.liveView = CorrectAnswerInfStones(frame: self)
        PlaygroundPage.current.needsIndefiniteExecution = false
    }
    
    
    @objc func Choice3Clicked(){
        
        UIView.animate(withDuration: 0.7, delay: 0.3, options: UIView.AnimationOptions.curveEaseOut, animations: ({
            self.Choice3.backgroundColor =  UIColor.green
            
        }), completion: { _ in
            self.Choice3.backgroundColor = UIColor.white
        })
        
        Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(ButtonPressed), userInfo: nil, repeats: true)
        
    }
    
    
    @objc func Choice2Clicked(){
        
        
        UIView.animate(withDuration: 0.7, delay: 0.3, options: UIView.AnimationOptions.curveEaseOut, animations: ({
            self.Choice2.backgroundColor =  UIColor.red
            
        }), completion: { _ in
            self.Choice2.backgroundColor = UIColor.white
        })
        
        
    }
    
    @objc func Choice1Clicked(){
        
        
        UIView.animate(withDuration: 0.7, delay: 0.3, options: UIView.AnimationOptions.curveEaseOut, animations: ({
            self.Choice1.backgroundColor =  UIColor.red
            
        }), completion: { _ in
            self.Choice1.backgroundColor = UIColor.white
        })
        
    }
    @objc func Choice4Clicked(){
        
        
        UIView.animate(withDuration: 0.7, delay: 0.3, options: UIView.AnimationOptions.curveEaseOut, animations: ({
            self.Choice4.backgroundColor =  UIColor.red
            
            
        }), completion: { _ in
            self.Choice4.backgroundColor = UIColor.white
        })
        
        
    }
        
    }
  
  public class CorrectAnswerInfStones: UIView{
    
    var CorrectLabel = UILabel() //
    var Image1 = UIImageView() //
    var Imag1Label = UILabel() //
    var Image2 = UIImageView() //
    var Image2Label = UILabel() //
    var explanation = UITextView() //
    var background = UIImageView()//
    var NextView = UIButton()//
    
    
    
    public init(frame: UIView) {
        
         super.init(frame: CGRect(x: 0, y: 0, width: 720, height: 580))
        SetUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func SetUpView(){
        //Background
        
        
        background.translatesAutoresizingMaskIntoConstraints = false
        background.image = UIImage(named: "infStonesAnswer.jpg")
        background.contentMode = .scaleAspectFill
        self.addSubview(background)
        
        NSLayoutConstraint.activate([
            background.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1.0), background.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.0),
            background.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            background.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0)
            
            
            ])
        
        // MARK: View setup for Correct Label
        CorrectLabel.text = "Correct!"
        CorrectLabel.textColor = UIColor.green
        CorrectLabel.font = UIFont(name: "Helvetica", size: 25)
        
        
        CorrectLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(CorrectLabel)
        NSLayoutConstraint.activate([
            CorrectLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            CorrectLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            CorrectLabel.widthAnchor.constraint(equalToConstant: 170),
            CorrectLabel.heightAnchor.constraint(equalToConstant: 100)
            
            ])
        
        
        //Image View 1
        
        
      Image1.image = UIImage(named: "George_Boole_color.jpg")
        Image1.translatesAutoresizingMaskIntoConstraints = false
        Image1.contentMode = .scaleAspectFill
        self.addSubview(Image1)
        NSLayoutConstraint.activate([
            Image1.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            Image1.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            Image1.widthAnchor.constraint(equalToConstant: 278),
            Image1.heightAnchor.constraint(equalToConstant: 255)
            
            ])
        
        Imag1Label.text = "Geroge Boole"
        Imag1Label.translatesAutoresizingMaskIntoConstraints = false
        Imag1Label.backgroundColor = .white
         Imag1Label.font = UIFont.systemFont(ofSize: 10)
        self.addSubview(Imag1Label)
       
        NSLayoutConstraint.activate([
            
            Imag1Label.topAnchor.constraint(equalTo: Image1.bottomAnchor, constant: 65),
            Imag1Label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -65),
            Imag1Label.widthAnchor.constraint(equalToConstant: 270),
            Imag1Label.heightAnchor.constraint(equalToConstant: 15)
            
            
            ])
        //IMage view 2
        
        
        Image2.translatesAutoresizingMaskIntoConstraints = false
        Image2.image = UIImage(named: "binary.jpg")
        self.addSubview(Image2)
        NSLayoutConstraint.activate([
            Image2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            Image2.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50),
            Image2.topAnchor.constraint(equalTo: Imag1Label.bottomAnchor, constant: 35),
            Image2.widthAnchor.constraint(equalToConstant: 278),
            Image2.heightAnchor.constraint(equalToConstant: 255)
            
            ])
        
        Image2Label.text = "Binary Stream '1's & '0's"
        Image2Label.translatesAutoresizingMaskIntoConstraints = false
        Image2Label.backgroundColor = .white
        Image2Label.font = UIFont.systemFont(ofSize: 10)
        self.addSubview(Image2Label)
        NSLayoutConstraint.activate([
            
            Image2Label.topAnchor.constraint(equalTo: Image2.bottomAnchor, constant: 10),
            Image2Label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            Image2Label.widthAnchor.constraint(equalToConstant: 270),
            Image2Label.heightAnchor.constraint(equalToConstant: 15)
            
            
            ])
        
        //The explanation Text View
        
        
        explanation.text = "Binary is a base 2 number system based on Boolean Algebra that was formulated by Gorge Boole. It is made up of only two numbers: 0 and 1. This number system is the basis for all binary code, which is used to write data such as the instructions that computer processors use, or the digital text you read every day. Just like The Infinity Stones for the Marvel Universe, Binary Numbers are the basis on which all power in the Computer Universe is based, even though that might change in the future 'Avengers: EndGame refrence'"
        explanation.isEditable = false
        explanation.backgroundColor = .clear
        explanation.textColor = .white
        explanation.font = UIFont.boldSystemFont(ofSize: 14)
        explanation.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(explanation)
        NSLayoutConstraint.activate([ explanation.topAnchor.constraint(equalTo: CorrectLabel.bottomAnchor, constant: 20),
                                      
                                      explanation.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -90), explanation.widthAnchor.constraint(equalToConstant: 280),
                                      explanation.heightAnchor.constraint(equalToConstant: 700)
            ])
        
        
        
        //The Next View Button
        
        NextView.setTitle("Next Question", for: .normal)
       
        NextView.tintColor = .blue
        NextView.backgroundColor = .red
        NextView.translatesAutoresizingMaskIntoConstraints = false
        NextView.addTarget(self, action: #selector(NextViewAppear), for: .touchUpInside)
        self.addSubview(NextView)
        
        NSLayoutConstraint.activate([
            NextView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -40),
            NextView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            
            NextView.widthAnchor.constraint(equalToConstant: 150),
            NextView.heightAnchor.constraint(equalToConstant: 30)
            
            
            ])
        
        
        
        
        
        
    }
    
    
    //Nexxt View func
    
    @objc func NextViewAppear(){
        PlaygroundPage.current.liveView = nil
        PlaygroundPage.current.needsIndefiniteExecution = false
        PlaygroundPage.current.liveView = IronMan(frame: self)
        
    }
  }
  

  
  
    
  
    
    
  
