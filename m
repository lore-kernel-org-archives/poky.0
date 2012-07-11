Return-Path: <scott.a.garman@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 287C2E00282
	for <poky@yoctoproject.org>; Tue, 10 Jul 2012 21:41:58 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 10 Jul 2012 21:41:57 -0700
Received: by pbbro8 with SMTP id ro8so1386617pbb.25
	for <poky@yoctoproject.org>; Tue, 10 Jul 2012 21:41:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:content-type:content-transfer-encoding:x-gm-message-state;
	bh=yNBs1AjYwnYvBqIB98PrWOxvSUYdHdVHUsxOuSvB3OI=;
	b=oXZF+zyDLlkV0P5nGQ/nwTbHzcQAUOinC+Enh77dFJpY/0qCevIhDMVUA9Pcu+/Llh
	LE9Ewap67PJRRdrND+sWxC510fX3i9Hm1kpRkmE55vC5MKlHtvRwcTfbMjwX9eFV7iqI
	o1NJQVs+fkpOQFWXYoN1Ar4fEpHhguzhbZJZ/+eF6vfk5fXeodJ6/v19Wy11T0tcCUkz
	Jb1+xv21d8MhbV2T67ND7K35o9iFCIFUdvi2DSBB/hBiKA1SHvLkjCvmVWnfBFiMIpMl
	JRKxTmPdb0jKJXEBtGKjOrVqmnfLXb+mgq/FV1wOpf/JQKfJ0z2YKNJToAeB9WsqyBLR
	er8A==
Received: by 10.68.221.38 with SMTP id qb6mr74555500pbc.144.1341981717281;
	Tue, 10 Jul 2012 21:41:57 -0700 (PDT)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id mt9sm909936pbb.14.2012.07.10.21.41.55
	(version=SSLv3 cipher=OTHER); Tue, 10 Jul 2012 21:41:55 -0700 (PDT)
Message-ID: <4FFD0425.7040004@intel.com>
Date: Tue, 10 Jul 2012 21:42:13 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: openembedded-core@lists.openembedded.org
X-Gm-Message-State: ALoCoQnj2gZx95ZJ8FnwRgeqK878UYlfLsVN6bhWXITs6nVERid7iRHci0FImUOCuKElAlxU67Ss
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Upcoming Yocto 1.2.1 "denzil" release this week.
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
X-List-Received-Date: Wed, 11 Jul 2012 04:41:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

After a review of the QA full pass test report for Yocto 1.2.1, the 
release team has agreed to submit this release candidate as our final 
release for 1.2.1. Song Liu will organize the release readiness 
decision, and I expect Beth Flanagan will be able to perform the 
official release by the end of this week.

Unfortunately the timing of this is such that I will be out of the 
office for the rest of this week. Saul Wold can handle any 
questions/concerns in my absence.

Thanks so much to everyone who contributed work that went into 1.2.1! We 
now have 35 bugfixes and a few further enhancements to denzil since 1.2 
to share with our users.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center


