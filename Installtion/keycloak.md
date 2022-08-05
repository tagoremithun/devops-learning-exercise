============================

The standalone Keycloak server runs on the top of a JBoss Wildfly instance and this server doesn't allow accessing it externally by default, for security reasons (it should be only for the administration console, but seems to affect every url in case of Keycloak). It has to be booted with the -b=0.0.0.0 option to enable it.

