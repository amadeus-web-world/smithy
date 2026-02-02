See the shortcuts to 3 files in this folder. Opens in Notepad

## Modify httpd.conf

### DocumentRoot

Look for the word DocumentRoot and update the htdocs path to match www/dawn

```
DocumentRoot "D:/AmadeusWeb/www/dawn"
<Directory "D:/AmadeusWeb/www/dawn">
&hellip;
```

---

## host entry for localhostcdn

Open Notepad in Administrator Mode then open the file: `C:\Windows\System32\drivers\etc`

Add this line

`127.0.0.1		localhostcdn`

## Add Virtual Directory

Open the vhosts.conf: `D:\AmadeusWeb\xampp\apache\conf\httpd-vhosts.conf`

Replace the last section

```
<VirtualHost localhostcdn:80>
    ServerAdmin imran+localhostcdn@amadeusweb.world
    DocumentRoot "D:/AmadeusWeb/cdn"
    <Directory "D:/AmadeusWeb/cdn">
        Options Indexes FollowSymLinks Includes ExecCGI
        AllowOverride All
        Require all granted
    </Directory>
    ServerName localhostcdn
    ErrorLog "logs/localhostcdn-error.log"
    CustomLog "logs/localhostcdn-access.log" common
</VirtualHost>
```
