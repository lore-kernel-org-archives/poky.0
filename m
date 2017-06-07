Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E1A4E00BEF; Wed,  7 Jun 2017 05:42:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,KHOP_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 KHOP_DYNAMIC Relay looks like a dynamic address
X-Greylist: delayed 504 seconds by postgrey-1.32 at yocto-www;
	Wed, 07 Jun 2017 05:42:56 PDT
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAA85E00BD5
	for <poky@yoctoproject.org>; Wed,  7 Jun 2017 05:42:56 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	v57CWS70013525
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Wed, 7 Jun 2017 13:32:29 +0100
Message-ID: <1496838748.6630.214.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ed Bartosh <ed.bartosh@linux.intel.com>, poky@yoctoproject.org
Date: Wed, 07 Jun 2017 13:32:28 +0100
In-Reply-To: <1496838489-25242-1-git-send-email-ed.bartosh@linux.intel.com>
References: <CAJTo0LYUEgJgU03xxhi2ke3SspsEs0_JPcX4yiBaVbF6p-saUQ@mail.gmail.com>
	<1496838489-25242-1-git-send-email-ed.bartosh@linux.intel.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.1 
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.11
	(dan.rpsys.net [192.168.3.1]);
	Wed, 07 Jun 2017 13:32:29 +0100 (BST)
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
Subject: Re: [PATCH v2] u-boot: enable dhcp for MPC8315 board
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
X-List-Received-Date: Wed, 07 Jun 2017 12:42:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2017-06-07 at 15:28 +0300, Ed Bartosh wrote:
> Getting ip address from DHCP server is much more convenient
> than setting static ip. It allows to configure u-boot in
> more generic way and to avoid hardcoding static ip in
> u-boot configuration.
> 
> Enabled dhcp client functionality for Yocto reference
> hardware MPC8315E-RDB.
> 
> Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
> ---
>  meta/recipes-bsp/u-boot/files/MPC8315ERDB-enable-DHCP.patch | 12
> ++++++++++++
>  meta/recipes-bsp/u-boot/u-boot-common_2017.01.inc           |  4
> +++-
>  2 files changed, 15 insertions(+), 1 deletion(-)
>  create mode 100644 meta/recipes-bsp/u-boot/files/MPC8315ERDB-enable-
> DHCP.patch

These files are in OE-Core, not meta-yocto but you sent them to the
poky list?

Cheers,

Richard

