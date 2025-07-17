# Seelf config

These are the config files I use to set up [seelf](https://github.com/YuukanOO/seelf) on an Oracle Cloud free tier `VM.Standard.E2.1.Micro` server for hosting documentation of my mods.  
For my docs I use [Starlight](https://starlight.astro.build/) and to publish them I use GitHub Actions. Example stuff for using this for an Astro project can be found on the `astro-example` branch

I like managing stuff manually, so the seelf target doesn't have automatic stuff enabled and the compose files of my services set the docker labels for traefik (see the `astro-example` branch)

## Setting up

Rename `example.env` to `.env` and modify the values. Cloudflare token can be created from the `Edit zone DNS` template, it's only used for generating the SSL certificates.

Create an empty `traefik/acme.json` file and make sure to set the permissions to 600 with `chmod 600 traefik/acme.json`!  
Edit the `traefik/config/traefik.yml` file and modify it to your liking. I think the main thing to change would be the domains to generate SSL certs for and the email to use for generating the certs. Other stuff can probably remain the same.
