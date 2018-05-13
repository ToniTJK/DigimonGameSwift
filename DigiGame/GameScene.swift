

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    //Empiezo a crear mis nodos
    var agumon = SKSpriteNode()
    var garurumonEnemy = SKSpriteNode()
    var ghostEnemy = SKSpriteNode()
    var fondo = SKSpriteNode()
    var suelo = SKSpriteNode()
    var digivice = SKSpriteNode()
    var fireBall = SKSpriteNode()
    var backgroundMusic = SKAudioNode(fileNamed: "bg.mp3")
    var agumonFlamaBebe = SKAudioNode(fileNamed: "flamaBebe.mp3")
    var button = SKSpriteNode()
    
    //Texturas Agumon
    let texturaAgumonRun0 = SKTexture(imageNamed: "agumon1.png")
    var texturaAgumonRun1 = SKTexture(imageNamed: "agumonRun1.png")
    var texturaAgumonRun2 = SKTexture(imageNamed: "agumonRun2.png")
    var texturaAgumonRun3 = SKTexture(imageNamed: "agumonRun3.png")
    var texturaAgumonRun4 = SKTexture(imageNamed: "agumonRun4.png")
    var texturaAgumonRun5 = SKTexture(imageNamed: "agumonRun5.png")
    var texturaAgumonRun6 = SKTexture(imageNamed: "agumonRun6.png")
    var texturaAgumonRun7 = SKTexture(imageNamed: "agumonRun7.png")
    
    //Texturas de salto de Agumon
    let texturaAgumonJump1 = SKTexture(imageNamed: "agumonJump1.png")
    let texturaAgumonJump2 = SKTexture(imageNamed: "agumonJump2.png")
    let texturaAgumonJump3 = SKTexture(imageNamed: "agumonJump3.png")
    let texturaAgumonJump4 = SKTexture(imageNamed: "agumonJump4.png")
    let texturaAgumonJump5 = SKTexture(imageNamed: "agumonJump5.png")
    let texturaAgumonJump6 = SKTexture(imageNamed: "agumonJump6.png")
    
    //Texturas de Lanzamoento Flame de Agumon
    let texturaAgumonFlamePosition1 = SKTexture(imageNamed: "agumonFlamePosition1.png")
    let texturaAgumonFlamePosition2 = SKTexture(imageNamed: "agumonFlamePosition2.png")
    let texturaAgumonFlamePosition3 = SKTexture(imageNamed: "agumonFlamePosition3.png")
    let texturaAgumonFlamePosition4 = SKTexture(imageNamed: "agumonFlamePosition4.png")
    
    //Texturas de Muerte de Agumon
    let texturaAgumonDie1 = SKTexture(imageNamed:  "agumonDie1.png")
    let texturaAgumonDie2 = SKTexture(imageNamed: "agumonDie2.png")
    let texturaAgumonDie3 = SKTexture(imageNamed: "agumonDie3.png")
    let texturaAgumonDie4 = SKTexture(imageNamed: "agumonDie4.png")
    let texturaAgumonDie5 = SKTexture(imageNamed: "agumonDie5.png")
    
    //Texturas Greymon evolution of Agumon (Greymon)
    let texturaGreymonRun1 = SKTexture(imageNamed: "greymonRun1.png")
    let texturaGreymonRun2 = SKTexture(imageNamed: "greymonRun2.png")
    let texturaGreymonRun3 = SKTexture(imageNamed: "greymonRun3.png")
    let texturaGreymonRun4 = SKTexture(imageNamed: "greymonRun4.png")
    let texturaGreymonRun5 = SKTexture(imageNamed: "greymonRun5.png")
    let texturaGreymonRun6 = SKTexture(imageNamed: "greymonRun6.png")
    
    //Texturas Greymon Flame evolution of Agumon (Greymon)
    let texturaGreymonFlame1 = SKTexture(imageNamed: "greymonFlame1.png")
    let texturaGreymonFlame2 = SKTexture(imageNamed: "greymonFlame2.png")
    let texturaGreymonFlame3 = SKTexture(imageNamed: "greymonFlame3.png")
    let texturaGreymonFlame4 = SKTexture(imageNamed: "greymonFlame4.png")
    
    //Texturas Greymon Jump evolution of Agumon (Greymon)
    let texturaGreymonJump1 = SKTexture(imageNamed: "greymonJump1.png")
    let texturaGreymonJump2 = SKTexture(imageNamed: "greymonJump2.png")
    let texturaGreymonJump3 = SKTexture(imageNamed: "greymonJump3.png")
    let texturaGreymonJump4 = SKTexture(imageNamed: "greymonJump4.png")
    
    //Enemigo Garurumon
    let texturaGarurumon1 = SKTexture(imageNamed: "garurumonEnemy1.png")
    let texturaGarurumon2 = SKTexture(imageNamed: "garurumonEnemy2.png")
    let texturaGarurumon3 = SKTexture(imageNamed: "garurumonEnemy3.png")
    let texturaGarurumon4 = SKTexture(imageNamed: "garurumonEnemy4.png")
    let texturaGarurumon5 = SKTexture(imageNamed: "garurumonEnemy5.png")
    let texturaGarurumon6 = SKTexture(imageNamed: "garurumonEnemy6.png")
    
    //Enemigo Ghost
    let texturaGhost1 = SKTexture(imageNamed: "ghost1.png")
    let texturaGhost2 = SKTexture(imageNamed: "ghost2.png")
    let texturaGhost3 = SKTexture(imageNamed: "ghost3.png")
    let texturaGhost4 = SKTexture(imageNamed: "ghost4.png")
    
    //Textura Fire Ball
    let texturaFireBall1 = SKTexture(imageNamed: "flame")
    
    //Textura Digivice
    let texturaDigiviceAmarillo = SKTexture(imageNamed: "digivice1.png")
    
    //Screen Size
    // Screen width.
    public var screenWidth: CGFloat {return UIScreen.main.bounds.width}
    
    // Screen height.
    public var screenHeight: CGFloat {return UIScreen.main.bounds.height}
    
    //Score
    var labelPuntuacion = SKLabelNode()
    var puntuacion = 0
    
    //Label GameOver
    var labelGameOver = SKLabelNode()
    
    
    //Record Score
    var labelRecord = SKLabelNode()
    var puntuacionRecord = 0
    
    //GameOver?
    var gameOver = false
    
    // Timer
    var labelTimer = SKLabelNode()
    var timer = Timer()
    var gameTime = 0
    
    //Record Time (falta)
    var labelTimerRecord = SKLabelNode()
    var gameTimeRecord = 0
    
    
    // Enumeración de los nodos que pueden colisionar
    // se les debe representar con números potencia de 2
    enum tipoNodo: UInt32 {
        case agumon = 1       // Main Player colisiona
        case digivice = 2      // moneda del juego
        case garurumon = 4     // si choca game over enemigo tierra
        case fireBall = 8          // Collision fire ball
        case suelo = 16          //Collision con el suelo
        case ghost = 32  //si choca game over enemigo volador
    }
    
    //viewDidLoad
    override func didMove(to view: SKView) {
        self.physicsWorld.contactDelegate = self
        reiniciar()
        //Para que solo se inicie una vez
        addDeviceSpawner(delay: TimeInterval(randomCGFloat(min: 2, max: 3)))
        addGarurumonSpawner(delay: TimeInterval(randomCGFloat(min: 3, max: 6)))
        addGhostSpawner(delay: TimeInterval(randomCGFloat(min: 3, max: 7)))
        
    }
    
    func addButtonFire(){
        button = SKSpriteNode(color: SKColor.red, size: CGSize(width: 100, height: 100))
        button.position = CGPoint(x:-300, y:-500);
        button.texture = SKTexture(imageNamed: "buttonFire.png")
        self.addChild(button)
    }
    
    func crearFondoAnimacion(){
        
        // Textura para el fondo
        let texturaFondo = SKTexture(imageNamed: "backgroundAgumon.jpg")
      
        
        // Acciones del fondo (para hacer ilusión de movimiento)
        // Desplazamos en el eje de las x cada 0.3s
        let movimientoFondo = SKAction.move(by: CGVector(dx: -texturaFondo.size().width, dy: 0), duration: 4)
       
        let movimientoFondoOrigen = SKAction.move(by: CGVector(dx: texturaFondo.size().width, dy: 0), duration: 0)
        
        // repetimos hasta el infinito
        let movimientoInfinitoFondo = SKAction.repeatForever(SKAction.sequence([movimientoFondo, movimientoFondoOrigen]))
        
        // Necesitamos más de un fondo para que no se vea la pantalla en negro
        
        // contador de fondos
        var i: CGFloat = 0
        
        while i < 2 {
            // Le ponemos la textura al fondo
            fondo = SKSpriteNode(texture: texturaFondo)
            
            // Indicamos la posición inicial del fondo
            fondo.position = CGPoint(x: texturaFondo.size().width * i, y: self.frame.midY)
            
            // Estiramos la altura de la imagen para que se adapte al alto de la pantalla
            fondo.size.height = self.frame.height
            
            // Indicamos zPosition para que quede detrás de todo
            fondo.zPosition = -1
            
            // Aplicamos la acción
            fondo.run(movimientoInfinitoFondo)
            
            // Ponemos el fondo en la escena
            self.addChild(fondo)
            
            // Incrementamos contador
            i += 1
        }
    }
    
    
    func didBegin(_ contact: SKPhysicsContact) {
        // en contact tenemos bodyA y bodyB que son los cuerpos que hicieron contacto
        let cuerpoA = contact.bodyA
        let cuerpoB = contact.bodyB
        if (cuerpoA.categoryBitMask == tipoNodo.agumon.rawValue && cuerpoB.categoryBitMask == tipoNodo.digivice.rawValue) {
            print("collision with digivice")
            puntuacion = puntuacion + 10
            labelPuntuacion.text = String(puntuacion)
            cuerpoB.node?.removeFromParent()
            
            if (puntuacion >= 50){
                evolveToGreymon()
            }
            //HARDMODE
            if (puntuacion >= 100){
               durationGarurumon = 4
            }
            
        } else if (cuerpoA.categoryBitMask == tipoNodo.digivice.rawValue && cuerpoB.categoryBitMask == tipoNodo.agumon.rawValue){
            print("collision with digivice")
            puntuacion = puntuacion + 10
            labelPuntuacion.text = String(puntuacion)
            cuerpoA.node?.removeFromParent()
        }
        if (cuerpoA.categoryBitMask == tipoNodo.agumon.rawValue && cuerpoB.categoryBitMask == tipoNodo.garurumon.rawValue || cuerpoA.categoryBitMask == tipoNodo.garurumon.rawValue && cuerpoB.categoryBitMask == tipoNodo.agumon.rawValue || cuerpoA.categoryBitMask == tipoNodo.agumon.rawValue && cuerpoB.categoryBitMask == tipoNodo.ghost.rawValue || cuerpoA.categoryBitMask == tipoNodo.ghost.rawValue && cuerpoB.categoryBitMask == tipoNodo.agumon.rawValue){
            //Animación de muerte
            garurumonEnemy.removeFromParent()
            ghostEnemy.removeFromParent()
            
            let animation = SKAction.animate(with: [texturaAgumonDie1/*,texturaAgumonDie2,texturaAgumonDie3,texturaAgumonDie4, texturaAgumonDie5*/], timePerFrame: 0.2)
            let animationRepeat = SKAction.repeat(animation, count: 1)
            agumon.run(animationRepeat)

            backgroundMusic.run(SKAction.stop())
            gameOver = true
            print("toco enemigo")
            
            //Check del record
            if(puntuacion > puntuacionRecord){
                puntuacionRecord = puntuacion
                labelRecord.text = String(puntuacion)
                gameTimeRecord = gameTime
                labelTimerRecord.text = String(gameTime)
            }
            
            //labelRecord.text = String(puntuacion)
            labelTimerRecord.text = String(gameTime)
            self.speed = 0
            ponerGameOver()
            timer.invalidate()
            
        }
        //Si colision el player con el suelo se restablece el contador de saltos
        if (cuerpoA.categoryBitMask == tipoNodo.suelo.rawValue && cuerpoB.categoryBitMask == tipoNodo.agumon.rawValue || cuerpoA.categoryBitMask == tipoNodo.agumon.rawValue && cuerpoB.categoryBitMask == tipoNodo.suelo.rawValue){
            print("Tocando el suelo")
            countJump = 0
        }
        if (cuerpoA.categoryBitMask == tipoNodo.garurumon.rawValue && cuerpoB.categoryBitMask == tipoNodo.fireBall.rawValue || cuerpoA.categoryBitMask == tipoNodo.fireBall.rawValue && cuerpoB.categoryBitMask == tipoNodo.garurumon.rawValue || cuerpoA.categoryBitMask == tipoNodo.fireBall.rawValue && cuerpoB.categoryBitMask == tipoNodo.ghost.rawValue || cuerpoA.categoryBitMask == tipoNodo.ghost.rawValue && cuerpoB.categoryBitMask == tipoNodo.fireBall.rawValue) {
            print("collision fireball with e")
            puntuacion = puntuacion + 2
            labelPuntuacion.text = String(puntuacion)
            cuerpoA.node?.removeFromParent()
            cuerpoB.node?.removeFromParent()
    }
}
    var maxJump = 2
    var countJump = 0
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if gameOver == false {
            for touch: AnyObject in touches {
                for touch: AnyObject in touches {
                    // Get the location of the touch in this scene
                    let location = touch.location(in: self)
                    // Check if the location of the touch is within the button's bounds
                        if button.contains(location) {
                            print("Go Fire Ball!!!")
                            
                            //Animacion con la evolucion
                                if(puntuacion >= 50){
                                    agumon.setScale(1.7)
                                    let animation = SKAction.animate(with: [texturaGreymonFlame1,texturaGreymonFlame2,texturaGreymonFlame3,texturaGreymonFlame4], timePerFrame: 0.1)
                                    //repeat one time
                                    let animationRepeat = SKAction.repeat(animation, count: 1)
                                    agumon.run(animationRepeat)
                            
                                } else {
                                    
                                    let animation = SKAction.animate(with: [texturaAgumonFlamePosition1,texturaAgumonFlamePosition2,texturaAgumonFlamePosition3,texturaAgumonFlamePosition4], timePerFrame: 0.1)
                                    //repeat one time
                                    let animationRepeat = SKAction.repeat(animation, count: 1)
                                    agumon.run(animationRepeat)
                                }
                            //Elimino la bola para que solo puedas lanzar una a la vez
                            fireBall.removeFromParent()
                            goFireBall()
                        
                        } else { // Si no toca el boton entonces jump/salta
                        
                    // Double jump control
                        if (countJump < maxJump){
                            countJump += 1
                                if(puntuacion >= 50){
                                    //Animacion de salto y la fuerza de impulso hacia arriba
                                    agumon.setScale(1.7)
                                    agumon.physicsBody!.applyImpulse(CGVector(dx: 0, dy: 450))
                                    let animation = SKAction.animate(with: [texturaGreymonJump1,texturaGreymonJump2,texturaGreymonJump3,texturaGreymonJump4], timePerFrame: 0.2)
                                    //repeat one time
                                    let animationRepeat = SKAction.repeat(animation, count: 1)
                                    agumon.run(animationRepeat)
                                } else {
                                    //Animacion de salto y la fuerza de impulso hacia arriba
                                    agumon.physicsBody!.applyImpulse(CGVector(dx: 0, dy: 450))
                                    let animation = SKAction.animate(with: [texturaAgumonJump1,texturaAgumonJump2,texturaAgumonJump3,texturaAgumonJump4], timePerFrame: 0.2)
                                    //repeat one time
                                    let animationRepeat = SKAction.repeat(animation, count: 1)
                                    agumon.run(animationRepeat)
                                }
                            }
                            
                        } // else control de botones
                    } //Segundo for
                } //Primer for
            
        } else { //gameOver true else
            
            gameOver = false
            puntuacion = 0
            gameTime = 0
            self.speed = 1
            self.removeAllChildren()
            reiniciar()
        }
    }
    
    //Creo la bola de fuego
    func goFireBall(){
        fireBall = SKSpriteNode(texture: texturaFireBall1)
        fireBall.position = agumon.position
        fireBall.position.x = fireBall.position.x + 5
        fireBall.physicsBody = SKPhysicsBody(circleOfRadius: texturaFireBall1.size().height / 2)
        fireBall.physicsBody!.isDynamic = false
        //collisions
        fireBall.physicsBody!.categoryBitMask = tipoNodo.fireBall.rawValue
        fireBall.physicsBody!.collisionBitMask = tipoNodo.garurumon.rawValue | tipoNodo.ghost.rawValue
        fireBall.physicsBody!.contactTestBitMask = tipoNodo.garurumon.rawValue | tipoNodo.ghost.rawValue
        self.addChild(fireBall)
        //move
        let moveRightAction = SKAction.move(by: CGVector(dx: texturaAgumonRun1.size().width+100, dy: 0), duration: 2.0)
        let destroyLeftAction = SKAction.removeFromParent();
        let sequenceAction = SKAction.sequence([moveRightAction, destroyLeftAction])
        fireBall.run(sequenceAction)
    }
    
    func crearAgumon(){
        //Le asocio la textura al nodo
        agumon = SKSpriteNode(texture: texturaAgumonRun1)
        
        //Asigno posicion (cambiar)
        agumon.position = CGPoint(x:-100.0,y:0.0)

        //Animación!
        let animation = SKAction.animate(with: [texturaAgumonRun1,texturaAgumonRun2,texturaAgumonRun3,texturaAgumonRun4,texturaAgumonRun5,texturaAgumonRun6,texturaAgumonRun7], timePerFrame: 0.1)

        //repeat para siempre
        let animationRepeat = SKAction.repeatForever(animation)
        
        //phisicas de Agumon
        agumon.physicsBody = SKPhysicsBody(circleOfRadius: texturaAgumonRun1.size().height / 2)
        
        //Las phisicas esta desactivadas de momento
        agumon.physicsBody!.isDynamic = true
        
        //Aplicamos la animacion
        agumon.run(animationRepeat)
        
        // Añadimos su categoría
        agumon.physicsBody!.categoryBitMask = tipoNodo.agumon.rawValue
        
        // Indicamos la categoría de colisión con enemigo
        agumon.physicsBody!.collisionBitMask = tipoNodo.garurumon.rawValue | tipoNodo.suelo.rawValue
        
        // Hace contacto con (para que nos avise)
        agumon.physicsBody!.contactTestBitMask = tipoNodo.garurumon.rawValue | tipoNodo.suelo.rawValue
        
        //Añadimos Agumon a la Scena
        self.addChild(agumon)
    }
    
    func evolveToGreymon(){
        //Le asocio la textura al nodo
        print("Evolving")
        let animation = SKAction.animate(with: [texturaGreymonRun1,texturaGreymonRun2,texturaGreymonRun3,texturaGreymonRun4,texturaGreymonRun5,texturaGreymonRun6], timePerFrame: 0.2)
        let animationRepeat = SKAction.repeatForever(animation)
        agumon.run(animationRepeat)
        agumon.setScale(1.7)
        
    }
    
    func crearGhostEnemy(){
        
        let randomPositionX = randomCGFloat(min: self.frame.midX + 300, max: self.frame.midX + 500)
        let randomPositionY = randomCGFloat(min: self.frame.midY, max: self.frame.midY)
        
        let path = UIBezierPath()
        path.move(to: CGPoint.zero)
        path.addQuadCurve(to: CGPoint(x: -1500, y: 1400), controlPoint: CGPoint(x: 100, y: self.frame.midY - 500))
        
        //Le asocio la textura al nodo
        ghostEnemy = SKSpriteNode(texture: texturaGhost1)
        
        //Asigno posicion
        ghostEnemy.position = CGPoint(x:500,y:-100)
        
        //Animación!
        let animation = SKAction.animate(with: [texturaGhost1,texturaGhost2,texturaGhost3,texturaGhost4], timePerFrame: 0.2)
        
        //repeat para siempre
        let animationRepeat = SKAction.repeatForever(animation)
        
        //phisicas de Ghost
        ghostEnemy.setScale(4)
        ghostEnemy.physicsBody = SKPhysicsBody(circleOfRadius: texturaGhost1.size().height * 2)
        
        //Las phisicas esta desactivadas de momento
        ghostEnemy.physicsBody?.isDynamic = true
        
        //Aplicamos la animacion
        ghostEnemy.run(animationRepeat)
        
        // Añadimos su categoría
        ghostEnemy.physicsBody!.categoryBitMask = tipoNodo.ghost.rawValue
        
        // Indicamos la categoría de colisión con el enemigo
        ghostEnemy.physicsBody!.collisionBitMask = tipoNodo.agumon.rawValue | tipoNodo.ghost.rawValue
        
        // Hace contacto con (para que nos avise)
        ghostEnemy.physicsBody!.contactTestBitMask = tipoNodo.agumon.rawValue | tipoNodo.ghost.rawValue
        
        //ghostEnemy.run(SKAction.follow(path.cgPath, duration: 1.0))
        
        let moveLeftAction = SKAction.follow(path.cgPath, duration: 2.0)
        let destroyLeftAction = SKAction.removeFromParent();
        let sequenceAction = SKAction.sequence([moveLeftAction, destroyLeftAction])
        ghostEnemy.run(sequenceAction)
        
        //Añadimos Agumon a la Scena
        self.addChild(ghostEnemy)
    }
    
    var durationGarurumon = 7
    func crearGarurumonEnemy(){
        //Le asocio la textura al nodo
        garurumonEnemy = SKSpriteNode(texture: texturaGarurumon1)
        
        //Asigno posicion
        garurumonEnemy.position = CGPoint(x:500,y:-30.0)
        
        //Animación!
        let animation = SKAction.animate(with: [texturaGarurumon1,texturaGarurumon2,texturaGarurumon3,texturaGarurumon4,texturaGarurumon5,texturaGarurumon6], timePerFrame: 0.4)
        
        //repeat para siempre
        let animationRepeat = SKAction.repeatForever(animation)
        
        //phisicas de Garurumon
        garurumonEnemy.physicsBody = SKPhysicsBody(circleOfRadius: texturaGarurumon1.size().height / 2)
        
        //Las phisicas esta desactivadas de momento
        garurumonEnemy.physicsBody?.isDynamic = true
        
        //Aplicamos la animacion
        garurumonEnemy.run(animationRepeat)
        
        // Añadimos su categoría
        garurumonEnemy.physicsBody!.categoryBitMask = tipoNodo.garurumon.rawValue
        
        // Indicamos la categoría de colisión con el enemigo
        garurumonEnemy.physicsBody!.collisionBitMask = tipoNodo.agumon.rawValue | tipoNodo.suelo.rawValue
        
        // Hace contacto con (para que nos avise)
        garurumonEnemy.physicsBody!.contactTestBitMask = tipoNodo.agumon.rawValue | tipoNodo.suelo.rawValue
        
        //Añadimos Agumon a la Scena
        self.addChild(garurumonEnemy)
        
        //move
        let moveLeftAction = SKAction.move(by: CGVector(dx: -texturaGarurumon1.size().width-900, dy: 0), duration: TimeInterval(durationGarurumon))
        let destroyLeftAction = SKAction.removeFromParent();
        let sequenceAction = SKAction.sequence([moveLeftAction, destroyLeftAction])
        garurumonEnemy.run(sequenceAction)
    }
    
    // Funcion para crear Randoms entre dos numeros CGFLOAT
    func randomCGFloat(min: CGFloat, max: CGFloat) -> CGFloat {
        return CGFloat(Float(arc4random()) / Float(UINT32_MAX)) * (max - min) + min
    }
    
    //Creacion de la moneda del juego
    func addDigivice(){
        digivice = SKSpriteNode(texture: texturaDigiviceAmarillo)
        
        let randomPositionX = randomCGFloat(min: self.frame.midX + 300, max: self.frame.midX + 500)
        let randomPositionY = randomCGFloat(min: self.frame.midY - 500, max: self.frame.midY)
       
        digivice.position = CGPoint(x:CGFloat(randomPositionX),y:CGFloat(randomPositionY))
        
        //Scale / size
        digivice.setScale(0.5)

        //let animationRepeat = SKAction.repeatForever(animation)2
        digivice.physicsBody = SKPhysicsBody(circleOfRadius: texturaDigiviceAmarillo.size().height / 3)

        digivice.physicsBody?.isDynamic = false

        //digivice.run(animationRepeat)
        
        // Añadimos su categoría
        digivice.physicsBody!.categoryBitMask = tipoNodo.digivice.rawValue
        
        // Indicamos la categoría de colisión con la moneda
        digivice.physicsBody!.collisionBitMask = tipoNodo.agumon.rawValue
        
        // Hace contacto con (para que nos avise)
        digivice.physicsBody!.contactTestBitMask = tipoNodo.agumon.rawValue

        self.addChild(digivice)
        
        let moveLeftAction = SKAction.move(by: CGVector(dx: -texturaDigiviceAmarillo.size().width-700, dy: 0), duration: 8.0)
        let destroyLeftAction = SKAction.removeFromParent();
        let sequenceAction = SKAction.sequence([moveLeftAction, destroyLeftAction])
        digivice.run(sequenceAction)
    }
    
    //Spawns forever con delay entre tiempo random
    func addDeviceSpawner(delay: TimeInterval) {
        let delayAction = SKAction.wait(forDuration: delay)
        let spawn = SKAction.run{self.addDigivice()}
        let action = SKAction.sequence([delayAction,spawn])
        let forever = SKAction.repeatForever(action)
        self.run(forever)
    }
    
    func addGarurumonSpawner(delay: TimeInterval) {
        let delayAction = SKAction.wait(forDuration: delay)
        let spawn = SKAction.run{self.crearGarurumonEnemy()}
        let action = SKAction.sequence([delayAction, spawn])
        let forever = SKAction.repeatForever(action)
        self.run(forever)
    }
    
    func addGhostSpawner(delay: TimeInterval) {
        let delayAction = SKAction.wait(forDuration: delay)
        let spawn = SKAction.run{self.crearGhostEnemy()}
        let action = SKAction.sequence([delayAction, spawn])
        let forever = SKAction.repeatForever(action)
        self.run(forever)
    }
    
    func addGround(){
        suelo.position = CGPoint(x:0.0,y:-590.0)
        suelo.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: self.frame.width + 50, height: 50))
        suelo.physicsBody?.isDynamic = false
        // Añadimos su categoría
        suelo.physicsBody!.categoryBitMask = tipoNodo.suelo.rawValue
        
        // Indicamos la categoría de colisión con la moneda
        suelo.physicsBody!.collisionBitMask = tipoNodo.agumon.rawValue
        
        // Hace contacto con (para que nos avise)
        suelo.physicsBody!.contactTestBitMask = tipoNodo.agumon.rawValue
        self.addChild(suelo)
    }
    
    func reiniciar(){
        crearFondoAnimacion()
        crearAgumon()
        addGround()
        ponerPuntuacionRecord()
        ponerTimerRecord()
        ponerPuntuacion()
        ponerTimer()
        addButtonFire()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.startGameTimer), userInfo: nil, repeats: true)
        self.addChild(backgroundMusic)
        labelGameOver.text = ""
        durationGarurumon = 7
    }
    
    @objc func startGameTimer(){
        gameTime += 1
        labelTimer.text = String(gameTime)
    }
    
    func ponerPuntuacion() {
        labelPuntuacion.fontName = "Arial"
        labelPuntuacion.fontSize = 70
        labelPuntuacion.text = "Score: 0"
        labelPuntuacion.position = CGPoint(x: self.frame.midX + 150, y: self.frame.midY + 550)
        labelPuntuacion.zPosition = 2
        self.addChild(labelPuntuacion)
    }
    
    func ponerGameOver() {
        labelGameOver.fontName = "Arial"
        labelGameOver.fontSize = 100
        labelGameOver.text = "Game Over"
        labelGameOver.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        labelGameOver.zPosition = 2
        self.addChild(labelGameOver)
    }
    
    
    
    func ponerPuntuacionRecord() {
        labelRecord.fontName = "Arial"
        labelRecord.color = UIColor(named: "yellow")
        labelRecord.fontSize = 70
        labelRecord.fontColor = SKColor.yellow
        labelRecord.text = String(puntuacionRecord)
        labelRecord.position = CGPoint(x: self.frame.midX + 150, y: self.frame.midY + 450)
        labelRecord.zPosition = 2
        self.addChild(labelRecord)
        
    }
    
    func ponerTimer() {
        labelTimer.fontName = "Arial"
        labelTimer.fontSize = 70
        labelTimer.text = "\(String(gameTime))s"
        labelTimer.position = CGPoint(x: self.frame.midX - 150, y: self.frame.midY + 550)
        labelTimer.zPosition = 2
        self.addChild(labelTimer)
    }
    
    func ponerTimerRecord() {
        labelTimerRecord.fontName = "Arial"
        labelTimerRecord.fontSize = 70
        labelTimerRecord.fontColor = SKColor.yellow
        labelTimerRecord.text = "\(String(gameTimeRecord))s"
        labelTimerRecord.position = CGPoint(x: self.frame.midX - 150, y: self.frame.midY + 450)
        labelTimerRecord.zPosition = 2
        self.addChild(labelTimerRecord)
    }
}

