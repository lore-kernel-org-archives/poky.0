Return-Path: <andrei@gherzan.ro>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF4ECE006DC
	for <poky@yoctoproject.org>; Fri, 16 Dec 2011 02:35:40 -0800 (PST)
Received: by ghbz10 with SMTP id z10so2760422ghb.35
	for <poky@yoctoproject.org>; Fri, 16 Dec 2011 02:35:39 -0800 (PST)
Received: by 10.236.181.225 with SMTP id l61mr11030298yhm.131.1324031739465;
	Fri, 16 Dec 2011 02:35:39 -0800 (PST)
Received: from [128.224.170.203] ([89.121.200.106])
	by mx.google.com with ESMTPS id 1sm18854163anp.15.2011.12.16.02.35.37
	(version=SSLv3 cipher=OTHER); Fri, 16 Dec 2011 02:35:38 -0800 (PST)
Message-ID: <4EEB1EF8.7060204@gherzan.ro>
Date: Fri, 16 Dec 2011 12:35:36 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: License | "or" problem?
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 16 Dec 2011 10:35:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

As i know qt4 has double license. This means that everybody can choose 
from GPLv3 and LGPLv2.1. This fact is reflected in bb file as:

LICENSE = "LGPLv2.1 | GPLv3"

Well, this "or" operand doesn't work as i end up with this error in a 
GPLv3 incompatible build:

ERROR: Nothing PROVIDES 'qt4-embedded'
ERROR: qt4-embedded was skipped: incompatible with license LGPLv2.1 | GPLv3
ERROR: Command execution failed: Traceback (most recent call last):
   File 
"/home/agherzan/work/wrs/yocto-adige/poky/bitbake/lib/bb/command.py", 
line 87, in runAsyncCommand
     commandmethod(self.cmds_async, self, options)
   File 
"/home/agherzan/work/wrs/yocto-adige/poky/bitbake/lib/bb/command.py", 
line 192, in buildTargets
     command.cooker.buildTargets(pkgs_to_build, task)
   File 
"/home/agherzan/work/wrs/yocto-adige/poky/bitbake/lib/bb/cooker.py", 
line 1111, in buildTargets
     taskdata.add_provider(localdata, self.status, k)
   File 
"/home/agherzan/work/wrs/yocto-adige/poky/bitbake/lib/bb/taskdata.py", 
line 371, in add_provider
     self.add_provider_internal(cfgData, dataCache, item)
   File 
"/home/agherzan/work/wrs/yocto-adige/poky/bitbake/lib/bb/taskdata.py", 
line 391, in add_provider_internal
     raise bb.providers.NoProvider(item)
NoProvider: qt4-embedded


