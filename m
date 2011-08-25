Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41AF6E0122C
	for <poky@yoctoproject.org>; Wed, 24 Aug 2011 18:51:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7P1pP9U017543
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 24 Aug 2011 18:51:26 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.21.143) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Wed, 24 Aug 2011 18:51:25 -0700
Message-ID: <4E55AA9B.9050805@windriver.com>
Date: Wed, 24 Aug 2011 21:51:23 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.20) Gecko/20110804 Thunderbird/3.1.12
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1314219098.git.bruce.ashfield@windriver.com>
	<1314235847.5939.167.camel@rex>
In-Reply-To: <1314235847.5939.167.camel@rex>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 0/3] linux-yocto/meta-yocto: consolidated kernel pull request
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
X-List-Received-Date: Thu, 25 Aug 2011 01:51:30 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-24 9:30 PM, Richard Purdie wrote:
> On Wed, 2011-08-24 at 16:54 -0400, Bruce Ashfield wrote:
>> These changes build on top of the recently sent pull request for
>> the core machines.
>>
>> This set of changes updates the preferred version for two more hardware
>> references (atom-pc/mpc8315) to 3.0 and ensure that the qemu machines
>> build 3.0 by default when meta-yocto is included. Let me know if my
>> efforts to force the qemu machines to prefer 3.0 are correct, I wasn't
>> sure if there was a better approach.
>>
>> The following changes since commit 6d0f1146b188f7efffc46477590b3b5615ae3035:
>>
>>    linux-yocto/2.6.37: apmd + get time of day fixes (2011-08-24 16:33:07 -0400)
>>
>> are available in the git repository at:
>>    git://git.pokylinux.org/poky-contrib kernel-yocto
>>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto
>>
>> Bruce Ashfield (3):
>>    meta-yocto: atom-pc/mpc8315e-rdb change preferred version to 3.0
>>    linux-yocto/meta-yocto: update SRCREVs for 3.0.3 and consolidated
>>      fixes
>>    meta-yocto: make qemu machines prefer linux-yocto_3.0
>
> The push command you used for this series had the same issue as the
> other one, lacking a prefix ;-)
>
> Merged to master though, thanks.

*sigh* good help is hard to find.

Bruce

>
> Richard
>


