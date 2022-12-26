import pwd, subprocess
c = get_config() 
c.JupyterHub.authenticator_class = 'jupyterhub.auth.PAMAuthenticator'
c.Authenticator.allowed_users = {'admin'}
c.Authenticator.admin_users = {'admin'}
def hook(sp):
    name = sp.user.name
    try:
        pwd.getpwnam(name)
    except KeyError:
        subprocess.check_call(['useradd', '-ms', '/bin/bash', name])
c.Spawner.pre_spawn_hook = hook