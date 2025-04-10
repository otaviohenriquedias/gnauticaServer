<?php
class DataHelper
{
    public static function formatarParaMysql($data)
    {
        // Verifica se a data está no formato dd/mm/aaaa
        $partes = explode('/', $data);

        if (count($partes) === 3) {
            return $partes[2] . '-' . $partes[1] . '-' . $partes[0];
        }

        // Retorna a mesma data se não estiver no formato esperado
        return $data;
    }
}
