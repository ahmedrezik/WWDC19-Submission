import Foundation
import PlaygroundSupport
import UIKit



public class EndGame: UIView{
var BackgroundImage = UIImageView()
    var  TheTextView = UITextView()
    var Title = UILabel()
    
    
    public init(scene: UIView){
        
        super.init(frame: CGRect(x: 0, y: 0, width: 720, height: 580))
        ViewSetup()
        
    }
    
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("Constructor has not been implemented")
    }
    
    func ViewSetup(){
        
        Title.text = "Marvel End Game, The Quantum Realm & Quantum Computing"
        BackgroundImage.image = UIImage(named: "QuantumRealm.png")
        BackgroundImage.contentMode = .scaleAspectFill
        
        Title.font = UIFont.boldSystemFont(ofSize: 20)
        Title.translatesAutoresizingMaskIntoConstraints = false
        BackgroundImage.translatesAutoresizingMaskIntoConstraints = false
        TheTextView.translatesAutoresizingMaskIntoConstraints = false
        TheTextView.text = "All computing systems rely on a fundamental ability to store and manipulate information. Current computers manipulate individual bits, which store information as binary 0 and 1 states. Millions of bits work together to process and display information. Quantum computers leverage different physical phenomena — superposition, entanglement, and interference — to manipulate information. To do this, we rely on different physical devices: quantum bits, or qubits. Superposition refers to a combination of states we would ordinarily describe independently. To make a classical analogy, if you play two musical notes at once, what you will hear is a superposition of the two notes. Entanglement is a famously counter-intuitive quantum phenomenon describing behavior we never see in the classical world. Entangled particles behave together as a system in ways that cannot be explained using classical logic.Finally, quantum states have a phase, and so can undergo interference. Quantum interference can be understood similarly to wave interference; when two waves are in phase, their amplitudes add, and when they are out of phase, their amplitudes cancel. Similarly, the Avengers will then must rely on Antman stuck in the Quantum realm where the physics is different to save our world from a second sanp !! See you @ WWDC 19 Best regards, Ahmed"
        
TheTextView.isEditable = false
        TheTextView.backgroundColor = .clear
        TheTextView.font = UIFont.boldSystemFont(ofSize: 15)
       
        self.addSubview(BackgroundImage)
        self.addSubview(Title)
         self.addSubview(TheTextView)
        
        NSLayoutConstraint.activate([
            
            //Background Image
            BackgroundImage.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.0),
            BackgroundImage.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1.0),
            BackgroundImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            BackgroundImage.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            //TheText
            
             Title.heightAnchor.constraint(equalToConstant: 150),Title.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 60), Title.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),Title.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
             
             //text view
             TheTextView.topAnchor.constraint(equalTo: Title.bottomAnchor, constant: 10),
             TheTextView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 70),
             TheTextView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60),TheTextView.widthAnchor.constraint(equalToConstant: 500), TheTextView.heightAnchor.constraint(equalToConstant: 400)
            ])
        
        
    }
    
}
