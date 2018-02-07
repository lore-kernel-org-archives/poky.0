Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A2A4E00E0A; Tue,  6 Feb 2018 16:01:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CF72E0083E
	for <poky@yoctoproject.org>; Tue,  6 Feb 2018 16:01:13 -0800 (PST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w17017pS006391
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Wed, 7 Feb 2018 00:01:08 GMT
Message-ID: <1517961667.3090.102.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tim Johnson <Tim.Johnson@calix.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Wed, 07 Feb 2018 00:01:07 +0000
In-Reply-To: <DM5PR05MB29558E5FAE0822DBB84D79D5E5FD0@DM5PR05MB2955.namprd05.prod.outlook.com>
References: <DM5PR05MB29558E5FAE0822DBB84D79D5E5FD0@DM5PR05MB2955.namprd05.prod.outlook.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.3 at dan
X-Virus-Status: Clean
Subject: Re: Sharing Header Files between Kernel Modules
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
X-List-Received-Date: Wed, 07 Feb 2018 00:01:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2018-02-06 at 23:03 +0000, Tim Johnson wrote:
> I am using Morty (2.2).
>  
> I have several kernel modules with header files that need to accessed
> by other kernel modules when building.
>  
> Where can I install the header files so:
> they can be found by other kernel modules while compiling
> they will be created during an sstate build
>  
> I was able to install the header files in:
> ‘${STAGING_KERNEL_DIR}/include/linux/exa’ (in work-shared). The other
> modules were able to find the header files, but that approach breaks
> the build from sstates.

Doesn't installing to ${D}${includedir} in do_install work? (or pick
your directory in ${D}). Note you need to DEPEND on the recipe
installing the files.

Cheers,

Richard

