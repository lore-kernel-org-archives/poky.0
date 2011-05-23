Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 03F764C8057C
	for <poky@pokylinux.org>; Mon, 23 May 2011 11:23:49 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4NGNlcu025315
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@pokylinux.org>; Mon, 23 May 2011 09:23:49 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 23 May 2011 09:23:47 -0700
Message-ID: <4DDA8A12.1090506@windriver.com>
Date: Mon, 23 May 2011 11:23:46 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: Kang Kai <Kai.Kang@windriver.com>
References: <4DDA3D8A.1000300@windriver.com>
In-Reply-To: <4DDA3D8A.1000300@windriver.com>
Cc: poky@pokylinux.org
Subject: Re: Do LSB test unreported issues need fix?
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
X-List-Received-Date: Mon, 23 May 2011 16:23:50 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 5/23/11 5:57 AM, Kang Kai wrote:
> Hi Mark,
> 
> I meet one test item of LSB core test,
> 
> /tset/LSB.fhs/var/lib-hwclock/lib-hwclock-tc 1    unreported
> 
> the result is unreported.
> 
> We were told that unreported issues don't need to be fixed. Would you 
> give us some confirmation?
> 
> And this issue will test /var/lib/hwclock/adjtime whether exists,  if 
> this issue needs to be fixed could I add it manually just as in 
> attachment patch.

This would be a good one to specifically "note".  And given time, investigate.
However, I would say it does not need to be fixed unless someone comes back and
says "no I think this is a bug".

(In this particular case, if the hwclock doesn't exist on a machine -- or it has
no time adjustment set, I don't believe it's actually required...  but it's good
to know about.)

--Mark

> Regards,
> Kai


