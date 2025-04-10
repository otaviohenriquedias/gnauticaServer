<?php
class EnvLoader {
    public static function carregar(string $caminho): void {
        if (!file_exists($caminho)) {
            error_log("Arquivo .env não encontrado: $caminho");
            return;
        }

        $linhas = file($caminho, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
        foreach ($linhas as $linha) {
            $linha = trim($linha);
            if ($linha === '' || str_starts_with($linha, '#')) {
                continue;
            }

            $partes = explode('=', $linha, 2);
            if (count($partes) !== 2) {
                continue; 
            }

            [$chave, $valor] = $partes;
            $chave = trim($chave);
            $valor = trim($valor);
            
            if (!isset($_ENV[$chave])) {
                $_ENV[$chave] = $valor;
            }
        }
    }
}
?>