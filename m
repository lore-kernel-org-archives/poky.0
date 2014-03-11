Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC5F2E008D6
	for <poky@yoctoproject.org>; Tue, 11 Mar 2014 03:04:43 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 Mar 2014 03:04:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,629,1389772800"; d="scan'208";a="489669686"
Received: from sleopold-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.85])
	by fmsmga001.fm.intel.com with ESMTP; 11 Mar 2014 03:04:41 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
Date: Tue, 11 Mar 2014 10:04:40 +0000
Message-ID: <2159614.mXa5WyPX4F@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.3 (Linux/3.13.6-200.fc20.x86_64; KDE/4.12.3; x86_64; ; )
In-Reply-To: <CAPybu_3CWLmXnexkgfbMgwmB1aMZGb8qwbbz0NqMQn5fy2ADow@mail.gmail.com>
References: <1394462648-29953-1-git-send-email-ricardo.ribalda@gmail.com>
	<CAPybu_3CWLmXnexkgfbMgwmB1aMZGb8qwbbz0NqMQn5fy2ADow@mail.gmail.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] package_deb: Map TARGET_ARCH x86_64 to DPKG_ARCH amd64
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 11 Mar 2014 10:04:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Ricardo,

On Tuesday 11 March 2014 07:59:13 Ricardo Ribalda Delgado wrote:
> Without this patch packages are generated as x86_64. Which cannot be
> installed by default.

Thanks for this, however as per the "Where to Send Patches" section of the 
README file in the Poky repository, this needs to be sent to the OE-Core 
mailing list: 

http://lists.openembedded.org/mailman/listinfo/openembedded-core

Could you please re-send it there?

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

