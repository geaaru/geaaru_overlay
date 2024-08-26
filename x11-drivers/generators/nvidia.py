#!/usr/bin/env python3

async def generate(hub, **pkginfo):
    NV_URI="http://download.nvidia.com/XFree86/"

    supported_versions = {
        '535.86.05'  : '6.7',
        '535.183.01' : '6.7',
        '550.54.14'  : '6.7',
        '550.107.02' : '6.7',
        '555.42.02'  : '6.8',
        '555.58.02'  : '6.8',
        '560.35.03'  : '6.10',
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
            slot=version.split('.')[0],
            artifacts=artifacts,
        )
        ebuild.push()
