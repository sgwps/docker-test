# Configuration file for jupyterhub.
# Configuration file for jupyterhub.

c = get_config()  # noqa
#  Currently installed:
#    - default: jupyterhub.auth.PAMAuthenticator
#    - dummy: jupyterhub.auth.DummyAuthenticator
#    - null: jupyterhub.auth.NullAuthenticator
#    - pam: jupyterhub.auth.PAMAuthenticator
#  Default: 'jupyterhub.auth.PAMAuthenticator'
c.JupyterHub.authenticator_class = 'jupyterhub.auth.PAMAuthenticator'
c.Authenticator.allowed_users = {'admin'}
c.Authenticator.admin_users = {'admin'}
c.PAMAuthenticator.open_sessions = False
c.LocalAuthenticator.create_system_users = True