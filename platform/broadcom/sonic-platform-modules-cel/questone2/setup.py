#!/usr/bin/env python

import os
from pathlib import Path
from setuptools import setup


DEVICE_NAME = "celestica"
HW_SKU = "x86_64-cel_questone_2-r0"


setup(
    name="sonic-platform",
    version="0.1",
    description="SONiC Platform API for Celestica Questone2 platforms",
    license="Apache 2.0",
    url="https://github.com/Azure/sonic-buildimage",
    packages=["sonic_platform"],
    package_dir={
        "sonic_platform": os.path.join(
            Path(__file__).absolute().parent.parent.parent.parent.parent,
            "device",
            DEVICE_NAME,
            HW_SKU,
            "sonic_platform",
        )
    },
    classifiers=[
        "Development Status :: 3 - Alpha",
        "Environment :: Plugins",
        "Intended Audience :: Developers",
        "Intended Audience :: Information Technology",
        "Intended Audience :: System Administrators",
        "License :: OSI Approved :: Apache Software License",
        "Natural Language :: English",
        "Operating System :: POSIX :: Linux",
        "Programming Language :: Python :: 3",
        "Topic :: Utilities",
    ],
    keywords="sonic SONiC platform PLATFORM",
)
