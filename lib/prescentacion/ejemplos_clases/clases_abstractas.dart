// la palabra reservada abstract se usa para definir una clase abstracta
// lo cual significa que no se puede instanciar directamente

//no permite hacer esto final Pago pago = Pago();
import 'dart:developer';

abstract class PagarReserva {
  void pagarReserva(double monto);
}

abstract class Pago {
  // Método abstracto que todas las clases que hereden de Pago deben implementar.
  void procesarPago(double monto);

  void emitirFactura() {
    log('Factura emitida');
  }
}

// Clase que hereda de Pago
class PagoConTarjeta extends Pago {
  @override
  void procesarPago(double monto) {
    log('Pago con tarjeta por un monto de $monto');
  }

  @override
  void emitirFactura() {
    log('Factura emitida con tarjeta');
  }
}

// Clase que hereda de Pago
class PagoConEfectivo implements Pago, PagarReserva {
  @override
  void procesarPago(double monto) {
    log('Pago con efectivo por un monto de $monto');
  }

  @override
  void pagarReserva(double monto) {
    log('Pago de reserva con efectivo por un monto de $monto');
  }

  @override
  void emitirFactura() {}
}

//? la principal diferencia entre extends e implements es que extends se usa para heredar de una clase
//? y implements se usa para implementar una interfaz
//? es decir que una clase puede heredar de una sola clase pero puede implementar multiples interfaces
