# Waypoint-ASP.NETCore

First pass example of running a ASP.NETCore application using Waypoint

- [Download and install Waypoint locally](https://www.waypointproject.io/docs/getting-started#installing-the-server)
- Clone this repo
- Navigate into directory
- Run `waypoint init`
- Run `waypoint up`
  - First run will take a little while
  - Waypoint will give you a URL once it is build, deployed and released
- Run `waypoint ui -authenticate` to poke around the UI

Notes:

- Switched to use the [GCP BuildPacks](https://github.com/GoogleCloudPlatform/buildpacks) as the default for the `pack` plugin is `heroku/buildpacks:18` which does not support .NET projects
- Added the `ASPNETCORE_URLS` environment variable in deploy as I was getting: `Unable to bind to http://localhost:5000 on the IPv6 loopback interface: 'Cannot assign requested address'`
- Only needed to add the `waypoint.hcl` file, everything else has been generated through `dotnet new web`
- Requires Docker
