Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2556E00AF9; Thu, 22 Mar 2018 09:09:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DC51E0070F
	for <poky@yoctoproject.org>; Thu, 22 Mar 2018 09:09:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w2MG9Bib013446
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 22 Mar 2018 09:09:11 -0700
Received: from [147.11.6.107] (147.11.6.107) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Thu, 22 Mar 2018 09:09:10 -0700
To: Aditya Tayade <Aditya.Tayade@kpit.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
References: <MAXPR01MB034877262A5CCF7212066F9191A90@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <830fb1c1-de32-2cb9-65fd-62ae560901ae@windriver.com>
Date: Thu, 22 Mar 2018 12:09:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <MAXPR01MB034877262A5CCF7212066F9191A90@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: ERROR: ebtables-2.0.10-4-r4 do_compile: oe_runmake failed
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
X-List-Received-Date: Thu, 22 Mar 2018 16:09:17 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 03/22/2018 03:43 AM, Aditya Tayade wrote:
> Hi,
> 
> 
> After adding meta-networking sub-layer in the yocto 2.5 project getting 
> some redeclaration errors while building the image.
> 
> Could you please help with finding out the root cause.

There have been several fixes to this in the master branches. The kernel's
v4.15 headers moved some of the include contents around and that
introduced build issues for ebtables.

That regression was subsequently fixes in a v4.15-stable, and I
updated the libc-headers to pick it up.

Khem also sent a patch to meta-oe for ebtables to fix it without
even needing the headers update.

So make sure that you are up to date on all your branches, and
it could very well be fixed.

Bruce

> 
> 
> Please refer the attached log for more information.
> 
> 
> 
> Best Regards,
> 
> Aditya Tayade
> 
> This message contains information that may be privileged or confidential 
> and is the property of the KPIT Technologies Ltd. It is intended only 
> for the person to whom it is addressed. If you are not the intended 
> recipient, you are not authorized to read, print, retain copy, 
> disseminate, distribute, or use this message or any part thereof. If you 
> receive this message in error, please notify the sender immediately and 
> delete all copies of this message. KPIT Technologies Ltd. does not 
> accept any liability for virus infected mails.
> 
> 


