# Ejercicio 2
class CuentaBancaria
    attr_accessor :nombre_usuario, :numero_cuenta, :vip
    def initialize(nombre_usuario, numero_cuenta, vip = 0)
            
        raise RangeError, 'Los números de cuentas deben tener 8 dígitos' if numero_cuenta.digits.count != 8
        raise RangeError, 'Las cuentas VIP son 1 o 0' if vip != 0 && vip != 1

        @nombre_usuario = nombre_usuario
        @numero_cuenta = numero_cuenta
        @vip = vip
    end
    
    def numero_cuenta
        "#{@vip}-#{@numero_cuenta}"
    end
end

cuenta1 = CuentaBancaria.new('Patricia', 14747209, 1)
cuenta2 = CuentaBancaria.new('Boris', 13456879)
puts cuenta1.numero_cuenta
puts cuenta2.numero_cuenta

cuenta3 = CuentaBancaria.new('Javier', 15838284984)



