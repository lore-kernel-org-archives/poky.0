Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 506C54C80A46
	for <poky@yoctoproject.org>; Tue,  3 May 2011 18:38:10 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p43Nc9iq014079
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 3 May 2011 16:38:09 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 3 May 2011 16:38:09 -0700
Message-ID: <4DC091E0.30008@windriver.com>
Date: Tue, 3 May 2011 18:38:08 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <BANLkTimaSk6vz1AeoRoT63T24XX=w1TuaA@mail.gmail.com>	<1304419011.21461.98.camel@rex>	<BANLkTi=N_hm-qCo0Gi+zoAH4mH+dszpRdA@mail.gmail.com>
	<1304464983.2033.0.camel@scimitar>
In-Reply-To: <1304464983.2033.0.camel@scimitar>
Subject: Re: post-image-creation postinsts
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
X-List-Received-Date: Tue, 03 May 2011 23:38:10 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 5/3/11 6:22 PM, Joshua Lock wrote:
> On Tue, 2011-05-03 at 19:01 -0400, Colin Walters wrote:
>> Hi Richard,
>>
>> On Tue, May 3, 2011 at 6:36 AM, Richard Purdie
>> <richard.purdie@linuxfoundation.org> wrote:
>>>
>>>> It seems to me we could add some mechanism for mounting the image
>>>> filesystem and running a script in there (guestfs?), or maybe an
>>>> automated QEMU boot, run the postinsts, and sync/shutdown?
>>>>
>>> force the script to run on the target device. If there is a way to run
>>> this at image generation time (cross safe), tell us what it is and we
>>> can make it happen at image generation time!
>>
>> See the bit I quoted from my original mail.  I think the most general
>> solution is simply "run qemu, then shutdown", 
> 
> Wouldn't this only work for images where there's kernel support for the
> QEMU emulated devices? 

Yes, and that is precisely why we're trying to avoid QEMU as much as possible.

The right answer really is to fix the install actions with appropriately
modified native utilities to generate caches, files, etc as necessary on the
target filesystem -- without ever having to boot into the target filesystem.

--Mark

> Cheers,
> Joshua


