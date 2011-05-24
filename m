Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2FB7F4C804B8
	for <poky@yoctoproject.org>; Tue, 24 May 2011 02:43:08 -0500 (CDT)
Received: by wwk4 with SMTP id 4so2295653wwk.5
	for <poky@yoctoproject.org>; Tue, 24 May 2011 00:43:08 -0700 (PDT)
Received: by 10.227.37.7 with SMTP id v7mr3219354wbd.41.1306222986720;
	Tue, 24 May 2011 00:43:06 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id ed10sm4583122wbb.15.2011.05.24.00.43.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 24 May 2011 00:43:05 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <e2bf7f2c627346574195eba57b665f4de4757c8a.1306220205.git.ke.yu@intel.com>
Date: Tue, 24 May 2011 09:43:03 +0200
Message-Id: <80400B78-E961-4061-A19A-2E99CB6889C6@dominion.thruhere.net>
References: <cover.1306220205.git.ke.yu@intel.com>
	<e2bf7f2c627346574195eba57b665f4de4757c8a.1306220205.git.ke.yu@intel.com>
To: Yu Ke <ke.yu@intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] fetcher2/git: add document for git fetcher supported options
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
X-List-Received-Date: Tue, 24 May 2011 07:43:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


Op 24 mei 2011, om 08:58 heeft Yu Ke het volgende geschreven:

> CC: Khem Raj <raj.khem@gmail.com>
> CC: Darren Hart <dvhart@linux.intel.com>
> 
> Signed-off-by: Yu Ke <ke.yu@intel.com>
> ---
> bitbake/lib/bb/fetch2/git.py |   37 ++++++++++++++++++++++++++++++++++---
> 1 files changed, 34 insertions(+), 3 deletions(-)
> protocol
> +   The method to use to access the repository. Common options are "git",
> +   "http", "file" and "rsync". The default is "rsync"

In this day and age shouldn't we change the default to 'git'?

regards,

Koen

