Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C4D2E01686
	for <poky@yoctoproject.org>; Tue,  1 Oct 2013 07:46:08 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Oct 2013 07:46:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1013,1371106800"; d="scan'208";a="409853020"
Received: from unknown (HELO [10.255.15.107]) ([10.255.15.107])
	by fmsmga002.fm.intel.com with ESMTP; 01 Oct 2013 07:46:06 -0700
Message-ID: <524AE02E.6060202@linux.intel.com>
Date: Tue, 01 Oct 2013 07:46:06 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130805 Thunderbird/17.0.8
MIME-Version: 1.0
To: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
References: <83DB4EC8FADD45428E3CC4E3664761FD09AAA0F4@AMDTCEX12.actuant.pri>
	<83DB4EC8FADD45428E3CC4E3664761FD09AAB21E@AMDTCEX12.actuant.pri>
In-Reply-To: <83DB4EC8FADD45428E3CC4E3664761FD09AAB21E@AMDTCEX12.actuant.pri>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Sudo binary missing suid - bit
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
X-List-Received-Date: Tue, 01 Oct 2013 14:46:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/01/2013 02:41 AM, Keskinarkaus, Teemu wrote:
> Ups. I meant mode 4111.
>
> -TK
>
> From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] On Behalf Of Keskinarkaus, Teemu
> Sent: 1. lokakuuta 2013 12:39
> To: poky@yoctoproject.org
> Subject: [poky] Sudo binary missing suid - bit
>
> Hi,
>
> I'm trying to get sudo - binary working in Yocto/Poky - based project. The binary is already on image, but for some reason it lacks the suid - bit and thus does not work. If I add the suid - bit with root user the sudo starts working as expected.
>
> There is in sudo - recipe this line:  chmod 411 ${D}${bindir}/sudo
>
> And the sudo - binary in sudo/1.8.6p7-r2/image/usr/bin has the right modes for binary, but when it gets installed to actual image the suid - bit is lost.
>
> Any idea how to fix that? Since the sudo is part of the poky I would thought it would work without too much of a hassle.
>
What version of poky are you using?  I just checked the master git and 
it appears to be correct with master.

Sau!

> Teemu Keskinarkaus
>
>
>
> ________________________________
>
> Actuant Corporation Email Notice
>
> This message is intended only for the use of the Addressee and may contain information that is PRIVILEGED and/or CONFIDENTIAL.
> This email is intended only for the personal and confidential use of the recipient(s) named above. If the reader of this email is not an intended recipient, you have received this email in error and any review, dissemination, distribution or copying is strictly prohibited.
> If you have received this email in error, please notify the sender immediately by return mail and permanently delete the copy you received.
>
> Thank you.
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>

