Received: from mx02.optimcloud.com (mx02.optimcloud.com [46.23.93.22])
 by mx.groups.io with SMTP id smtpd.web12.8026.1602341146816728475
 for <poky@lists.yoctoproject.org>;
 Sat, 10 Oct 2020 07:45:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=WDvgJFuS;
 spf=none, err=SPF record not found (domain: optimcloud.com, ip: 46.23.93.22, mailfrom: yocto@optimcloud.com)
Received: from mx02.optimcloud.com (localhost [127.0.0.1])
	by mx02.optimcloud.com (OpenSMTPD) with ESMTP id eb19f893
	for <poky@lists.yoctoproject.org>;
	Sat, 10 Oct 2020 16:45:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=to
	:from:subject:message-id:date:mime-version:content-type
	:content-transfer-encoding; s=obsd; bh=ekhYijI2+WPIELE19E3vQH4SX
	lyzDyVwBuQ9IKvEe+U=; b=WDvgJFuSYt6lidUePKEOP2HSMvhsBeDGXfiy3P79Q
	VKas6Ausou4+FvOepxeUzW87XK+EIEXQR8GoQbM0rMRPNX42msqWvqjDKDOQ3x/a
	QQKE0QuuCa1vs1x+K6T+ti7gQIdAfhUgTEk/LMjX801/1pvrQ1I+dOsy4hXo3+xQ
	oVsDa3Y9pLEgHzCbH04E/L3dkYzsbuJnAft/MToEa7TAOAAl0gbf82q6dHV9Uekq
	j+b11sgA+jGaveJZaBbsQyp41UFGFfH8euLVjp2AZqnmRyx5oqUrCrzss57ip/LX
	B4TgBpzg9SFcIloTA4R8i7UNxDOZTPp2VMnt2EJAp1lVg==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=to:from
	:subject:message-id:date:mime-version:content-type
	:content-transfer-encoding; q=dns; s=obsd; b=arwozA+H6QohQk8MbJB
	FKXuVsocQzYWuyQmDqU82lxibKrQPzF60PXMrEzUatAAeyatk/+NT601wolxMqoQ
	Wua9o+B0RlKbR05Ai57tQdEr4fYbwsc1t2OIg+buRDOX/3gu+/ewwE+oU21fl3+K
	w9JmkD3XzNJNdhNN2+pjNkxhCU2VpY2cYAHG498Uyizc+0iMWpIfn5owps2ZwebE
	RaWTubjnGqoiQWuz6oLYTvG//lg4BPTHE5SUS0rrClYL8ZoQNUULeDi8uqWI+wHa
	GDyjkCYUgKuc99F8ch77HTtFnBLTwF/2kbJ4AOJBo4a9U52o4ZI+3TxRDgcaXsi0
	9Nw==
Received: 
	by mx02.optimcloud.com (OpenSMTPD) with ESMTPSA id 37cc32c7 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO) auth=yes user=yocto@optimcloud.com
	for <poky@lists.yoctoproject.org>;
	Sat, 10 Oct 2020 16:45:42 +0200 (CEST)
To: poky@lists.yoctoproject.org
From: "Yocto" <yocto@optimcloud.com>
Subject: ModuleNotFoundError: No module named 'multiprocessing'
Message-ID: <9103e3d8-a9a3-b82f-b33d-3372b7d8f842@optimcloud.com>
Date: Sat, 10 Oct 2020 21:43:46 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Ive created a recipe which builds and installs fine in the image 
however, via vli i receive


glances
Traceback (most recent call last):
   File "/usr/bin/glances", line 33, in <module>
     sys.exit(load_entry_point('Glances==3.1.5', 'console_scripts', 
'glances')())
   File "/usr/bin/glances", line 25, in importlib_load_entry_point
     return next(matches).load()
   File "/usr/lib/python3.8/importlib/metadata.py", line 77, in load
     module = import_module(match.group('module'))
   File "/usr/lib/python3.8/importlib/__init__.py", line 127, in 
import_module
     return _bootstrap._gcd_import(name[level:], package, level)
   File "<frozen importlib._bootstrap>", line 1014, in _gcd_import
   File "<frozen importlib._bootstrap>", line 991, in _find_and_load
   File "<frozen importlib._bootstrap>", line 975, in 
_find_and_load_unlocked
   File "<frozen importlib._bootstrap>", line 671, in _load_unlocked
   File "<frozen importlib._bootstrap_external>", line 783, in exec_module
   File "<frozen importlib._bootstrap>", line 219, in 
_call_with_frames_removed
   File "/usr/lib/python3.8/site-packages/glances/__init__.py", line 44, 
in <module>
     from glances.main import GlancesMain
   File "/usr/lib/python3.8/site-packages/glances/main.py", line 28, in 
<module>
     from glances.config import Config
   File "/usr/lib/python3.8/site-packages/glances/config.py", line 24, 
in <module>
     import multiprocessing
ModuleNotFoundError: No module named 'multiprocessing'


so i ask, whats missing, or is something broken?


# The is automatic generated Code by "makePipRecipes.py"
# (build by Robin Sebastian (https://github.com/robseb) Vers.: 1.1)

SUMMARY = "Recipie to embedded the Python PiP Package Glances"
HOMEPAGE ="https://pypi.org/project/Glances"
LICENSE = "AGPL"
LIC_FILES_CHKSUM = 
"file://CONTRIBUTING.md;md5=93a9e8bcb1772a7aa541166ae95f0342"

BBCLASSEXTEND = "native nativesdk"
inherit pypi setuptools3

RDEPENDS_${PN} += "\
     ${PYTHON_PN}-psutil \
     ${PYTHON_PN}-future \
     ${PYTHON_PN}-docutils \
     ${PYTHON_PN}-multiprocessing \
"

PYPI_PACKAGE = "Glances"
SRC_URI[md5sum] = "d15a35810d3e85d5ae1b203040e727b4"
SRC_URI[sha256sum] = 
"00db2f3426e81bdf9428a56f5f54cd8866c3e6418c7b0c85374046ae044f3c74"

