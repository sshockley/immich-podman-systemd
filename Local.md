# Notes for local changes

* Added nginx container for reverse proxy.
* Added unit descriptions
* Specified network name in all containers
   * Probably should have done this in the pod file
* Switched from pinned Immich version to release
* Specified network as RFC 6598 (CGNat) range to match my other container networks

Note that this pod runs privileged because I share the files via NFS, and SELinux doesn't like NFS in podman rootless.
