/opt/gitlab/embedded/bin/runsvdir-start&
cd /etc/gitlab/ssl
openssl req -x509 -out gitlab.crt -keyout gitlab.key \
	  -newkey rsa:2048 -nodes -sha256 \
	    -subj '/CN=localhost' -extensions EXT -config <( \
		   printf "[dn]\nCN=localhost\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:localhost\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")
chmod o-r gitlab.key
gitlab-ctl reconfigure
tail -f /dev/null
