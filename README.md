# DNS-Reverso

O script ```dns_reverso.sh``` é uma ferramenta de linha de comando desenvolvida em bash para realizar uma pesquisa de DNS reverso em uma faixa de endereços IP. A ferramenta utiliza o comando host para obter informações sobre os registros PTR associados aos endereços IP na faixa especificada.

<br>

---

<br>

## **Modo de uso**

```bash
./dns_reverso.sh <primeiro IP> <último IP>
```

## **Exemplo**

```bash
./dns_reverso.sh 37.59.174.224 37.59.174.239
```

## **Exemplo de saída**

```bash
python3 dnsbrute.py example.com /path/to/wordlist.txt --threads 8 --timeout 2 --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"
```

```bash
------------------------------------------------------------------------------------
| Pk's Academy - Pesquisa DNS Reversa |
------------------------------------------------------------------------------------
microsoft.com.
apple.com.
google.com.
yahoo.com.
...
```

<br>

---

<br>


## **Funcionalidades**

1. Verificação de Argumentos
  * Verifica se o número correto de argumentos foi fornecido. Caso contrário, exibe uma mensagem de uso adequado.

2. Validação de Endereços IP
  * Verifica se os endereços IP fornecidos são válidos antes de iniciar a pesquisa de DNS reverso.

3. Divisão de Endereços IP
  * Divide os endereços IP fornecidos em partes para facilitar o processamento.

4. Apresentação de Resultados
  * Apresenta os resultados da pesquisa de DNS reverso, exibindo os registros PTR associados aos endereços IP na faixa especificada.

<br>

---

<br>

## **Observações**

1. O script utiliza o comando host para realizar a pesquisa de DNS reverso.
2. Os endereços IP são gerados e processados dentro da faixa especificada.

<br>

---

<br>

## **Avisos**

1. O uso indevido desta ferramenta pode resultar em consequências legais. Certifique-se de compreender e seguir as leis e regulamentos locais antes de realizar quaisquer testes de segurança.
2. Este script deve ser usado apenas em ambientes autorizados e para fins educacionais.
3. Certifique-se de ter permissão adequada antes de realizar pesquisas de DNS reverso em sistemas ou redes.

