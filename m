Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A232E013A8
	for <poky@yoctoproject.org>; Wed, 11 Apr 2012 02:08:58 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 Apr 2012 02:08:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="140367566"
Received: from unknown (HELO helios.localnet) ([10.252.120.50])
	by fmsmga001.fm.intel.com with ESMTP; 11 Apr 2012 02:08:57 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Patrick <kpa_info@yahoo.fr>
Date: Wed, 11 Apr 2012 10:08:55 +0100
Message-ID: <1389871.AkcVuV051j@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.0.0-17-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <4F853846.60409@yahoo.fr>
References: <4F845371.9040903@yahoo.fr> <1704553.ee0Gysgyqc@helios>
	<4F853846.60409@yahoo.fr>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Qt4 minimal subset
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
X-List-Received-Date: Wed, 11 Apr 2012 09:08:58 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 11 April 2012 09:52:38 Patrick wrote:
> Thanks again for your answer. I have rebuild qt with DirectFB using
> qt4-embedded. I could start a Qt application on my board using QWS (test
> -qws). Is that right to start DirectFB or should I use another way ?
> I just would like to be sure that DirectFB is used and not simply the
> Linux framebuffer.

At this point I'd have to refer you to the Qt documentation, particularly the 
first link:

http://qt-project.org/doc/qt-4.8/qt-embedded-displaymanagement.html
http://qt-project.org/doc/qt-4.8/qt-embeddedlinux-directfb.html

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

