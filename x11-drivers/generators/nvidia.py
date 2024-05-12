#!/usr/bin/env python3

async def generate(hub, **pkginfo):
    NV_URI="http://download.nvidia.com/XFree86/"

    supported_versions = {
        '535.86.05': '6.7',
        '550.54.14': '6.7',
        '550.78'   : '6.7',
    }

    for version, maxk in supported_versions.items():
        artifacts = []

        if pkginfo['name'] == 'nvidia-drivers':
            artifact_amd64 = hub.pkgtools.ebuild.Artifact(
                url='%sLinux-x86_64/%s/NVIDIA-Linux-x86_64-%s-no-compat32.run' % (
                    NV_URI, version, version,
                ))

            artifact_arm64 = hub.pkgtools.ebuild.Artifact(
                url='%sLinux-aarch64/%s/NVIDIA-Linux-aarch64-%s.run' % (
                    NV_URI, version, version,
                ))
            artifacts=[artifact_amd64, artifact_arm64]

        ebuild = hub.pkgtools.ebuild.BreezyBuild(
            **pkginfo,
            version=version,
            max_kernel=maxk,
            artifacts=artifacts,
        )
        ebuild.push()
