c = get_config() 
c.JupyterHub.authenticator_class = 'jupyterhub.auth.PAMAuthenticator'
c.Authenticator.allowed_users = {'admin'}
c.Authenticator.admin_users = {'admin'}
