Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B737BE01404
	for <poky@yoctoproject.org>; Wed,  1 Aug 2012 13:32:56 -0700 (PDT)
Received: from mail-gh0-f180.google.com ([209.85.160.180])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 01 Aug 2012 13:32:56 -0700
Received: by ghbz12 with SMTP id z12so6862454ghb.25
	for <poky@yoctoproject.org>; Wed, 01 Aug 2012 13:32:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:content-type:content-transfer-encoding:x-gm-message-state;
	bh=wR6cvsZGgcR7V7g8Lq1lxZm7VYvhh6jxWO+he1LSJ64=;
	b=m0y4rZENtHDIPBttWsfqh4OxzMyfdtlwQig6gOa86gAvREWZYFRtx7vhE9T976q1dE
	qxq0wVFPgoEHrfemaulZ3aurr3zwFkX9B57yFbc0HWRaH7Pf8Wbl/Kb5RDj49K+gRfvm
	QlTnmFdqqCYibYLj42jyPe1DXz2XaZPFMYWy//7GW6ZMAnlPUuK96xPcI2tN7pXOOV3g
	u9DEhxJib1BA3X1vViKhpTvSU+w+2O7IjvlTTM9UA6l2O0zfRANtsnbU/p7cvTiGfhBo
	4f8b5CKzTdDjrUOg0X/4yaYmTWFe4wu4Vi3z18O9jqxeM+uJ+hnYfDtFr0AtzzZVzX9N
	kzLw==
Received: by 10.68.194.201 with SMTP id hy9mr54476552pbc.69.1343853174526;
	Wed, 01 Aug 2012 13:32:54 -0700 (PDT)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id og7sm2841032pbb.62.2012.08.01.13.32.53
	(version=SSLv3 cipher=OTHER); Wed, 01 Aug 2012 13:32:54 -0700 (PDT)
Message-ID: <50199278.9040407@intel.com>
Date: Wed, 01 Aug 2012 13:32:56 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
X-Gm-Message-State: ALoCoQmqxgryQVKXobSqjV3VS0//bmYkma4qONyVJgSbLDZNYgVJDDYZ3mJKnW8MsaPh7YVEz6Cx
Cc: yocto@yoctoproject.org, "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: denzil-next (1.2.2) staging branch change
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
X-List-Received-Date: Wed, 01 Aug 2012 20:32:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I just wanted to make a short announcement that I've just renamed my 
sgarman/denzil-next-1.2.2 staging branches to simply sgarman/denzil-next.

oe-core based:
http://git.openembedded.org/openembedded-core-contrib/log/?h=sgarman/denzil-next

poky based:
http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next

I created the -1.2.2 branches because at the time the Yocto Project 
1.2.1 release was still being finalized and I needed to start tracking 
patches for the next denzil point release. Now that 1.2.1 is out, the 
meaning of denzil-next is no longer ambiguous.

Again, the workflow I'm using is I pull in community requests for denzil 
commits into my sgarman/denzil-next branches, run some tests on them, 
and then submit a pull request to the appropriate mailing lists so 
Richard can then approve and merge them into the official denzil branches.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

