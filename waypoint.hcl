project = "waypoint-aspnetcore"

app "webapp"{
    build {
        use "pack" {
            builder = "gcr.io/buildpacks/builder:v1"
        }
    }

    deploy {
        use "docker" {
            static_environment = {
                "ASPNETCORE_URLS": "http://+:3000"
            }
        }
    }
}
