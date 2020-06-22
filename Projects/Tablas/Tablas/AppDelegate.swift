//
//  AppDelegate.swift
//  Tablas
//
//  Created by Hernán Galileo Cabrera Garibaldi on 18/06/20.
//  Copyright © 2020 Hernán Galileo Cabrera Garibaldi. All rights reserved.
//
// Delegate = es una clase que implementa un protocolo y realiza ciertas funciones en nombre de otra clase
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
// Delegado: En IO's

//    Delegado: En iOS, un delegado (Delegate) es una clase que hace algo en nombre de otra clase.

//    AppDelegate: La clase AppDelegate es un lugar donde se manejan estados especiales de la clase UIApplication. Estos estados son parte del ciclo de VIDA de la app en si, y se representan con varias funciones que son llamadas por iOS automaticamente dentro de la clase AppDelagate. La clase UIApplication le "delega" la responsabilidad a la clase AppDelegate de implementar dichas funciones.

//    Foreground: Primer plano, Estado Activo.

//    Background: Fondo, Estado Oculto.

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      // Sobrecarga del Punto de inicio de la aplicación después de la personalización.
        print("Se activo la func application del AppDelegeate")
        return true
        }
        func applicationWillResignActive(_ application: UIApplication) {
            // Se envía cuando la aplicación está a punto de pasar del estado activo al estado inactivo. Esto puede ocurrir por ciertos tipos de interrupciones temporales (por ejemplo, una llamada telefónica entrante o un mensaje SMS) o cuando el usuario sale de la aplicación y comienza la transición al estado de fondo(background).
            //  Utilice este método para hacer una pausa en las tareas en curso (task), desactivar los temporizadores(timers), e invalidar renderizado de gráficos. Los videojuegos deben utilizar este método para hacer pausa en el juego.
            print("Se activo la func applicationWillResignActive del AppDelegate")
        }
        func applicationDidEnterBackground(_ application: UIApplication) {
            // Utilice este método para recursos, guardar los datos de usuario, invalidar temporizadores y almacenar suficiente información del estado actual de la aplicación en caso de que se cierre y tenga que abrir más adelante.
            // Si su aplicación es compatible con ejecución en segundo plano, este método se llama en lugar de applicationWillTerminate: cuando el usuario cierra la app.
            print("Se activo la func applicationDidEnterBackground del AppDelegate")
        }
        func applicationWillEnterForeground(_ application: UIApplication) {
            // Llamado como parte de la transición de estar en background a pasar a un estado activo; aquí se puede deshacer muchos de los cambios hechos al entrar en background.
            print("Se activo la func applicationWillEnterForeground del AppDelegate")
     }
        func applicationDidBecomeActive(_ application: UIApplication) {
            // Aquí puedes reiniciar las tareas que se han detenido(o no ha empezado) mientras la aplicación estaba inactiva. Si la aplicación estaba previamente en el fondo (background), opcionalmente se puede actualizar la interfaz de usuario.
            print("Se activo la func applicationDidBecomeActive del AppDelegate")
    }
    func applicationWillTerminate(_ application: UIApplication) {
            // Se llama cuando la aplicación está a punto de terminar. Aquie puedes guardar los datos en caso de ser necesario.
        print("Se activo la func applicationWillTerminate del AppDelegate")
        }
}

