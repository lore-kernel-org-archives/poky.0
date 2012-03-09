Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5120DE013A3
	for <poky@yoctoproject.org>; Fri,  9 Mar 2012 07:58:09 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q29Fw8ib004434
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 9 Mar 2012 07:58:08 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.231) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 9 Mar 2012 07:58:07 -0800
Message-ID: <4F5A288D.9010900@windriver.com>
Date: Fri, 9 Mar 2012 09:58:05 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <9F69795E29C890408AC2DAF646C89BB379D1059697@MAILBOX.arc.local>
In-Reply-To: <9F69795E29C890408AC2DAF646C89BB379D1059697@MAILBOX.arc.local>
Subject: Re: How to create a PREMIRROR
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
X-List-Received-Date: Fri, 09 Mar 2012 15:58:09 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 3/9/12 9:40 AM, Zoufal Andreas wrote:
> Hello everybody,
>
> I am new here in this mailing list. We are starting to use Yocto/Poky for an
> embedded project, and we have the need to collect all source code in our SVN
> repository for the case internet is not available. I think using PREMIRRORS (and
> SSTATE_MIRRORS for speedup) is the right way?
>
> How to create and maintain a local PREMIRRROR? What is the best practice? I’m
> pretty sure this is not the first time for this question, so can you give me
> some hints for a good documentation, or advices?

For the premirrors, what I've done is start a new build directory.. setup my 
DL_DIR to some place "safe".. and then do a "bitbake -c fetchall world"

I then export my DL_DIR for others via NFS, FTP, HTTPS, etc... whatever is 
appropriate within your organization -- then everyone else uses PREMIRROR 
settings to use that DL_DIR.

For the SSTATE_MIRROR, you can do something similar... but sstate_mirroring is 
really only useful if everyone is on a fast link.  In my experience anything 
slower then a gigabit link and it's usually (not always) faster to compile stuff 
locally, then pull from an sstate_mirror.

(Also if you have problems with an sstate_mirror, please let us know.  Not a lot 
of people are using them yet -- I had some issues w/ 1.1 and the sstate being 
used by multiple userids, but I believe these are resolved in newer versions.)

--Mark

> Thanx, Andi
>
> *ANDREAS ZOUFAL
> *Engineer
> Safety & Security Department
> Video and Security Technology
>
> **
>
> *AIT Austrian Institute of Technology GmbH
> *Donau-City-Straße 1 | 1220 Vienna | Austria
> T +43(0) 50550-4266 | F +43(0) 50550-4150
> _andreas.zoufal@ait.ac.at <mailto:andreas.zoufal@ait.ac.at>_|
> _http://www.ait.ac.at__
> _
> FN: 115980 i HG Wien | UID: ATU14703506
> This email and any attachments thereto, is intended only for use by the
> addressee(s) named herein and may contain legally privileged and/or confidential
> information. If you are not the intended recipient, please notify the sender by
> return e-mail or by telephone and delete this message from your system and any
> printout thereof. Any unauthorized use, reproduction, or dissemination of this
> message is strictly prohibited. Please note that e-mails are susceptible to
> change. AIT Austrian Institute of Technology GmbH shall not be liable for the
> improper or incomplete transmission of the information contained in this
> communication, nor shall it be liable for any delay in its receipt.
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


