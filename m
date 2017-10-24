Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7936EE00D03; Tue, 24 Oct 2017 07:42:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW,RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.17.21 listed in dnsbl.sorbs.net]
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F27F4E00CEF
	for <poky@yoctoproject.org>; Tue, 24 Oct 2017 07:41:59 -0700 (PDT)
Received: from [192.168.3.22] ([84.56.230.36]) by mail.gmx.com (mrgmx102
	[212.227.17.168]) with ESMTPSA (Nemesis) id 0MKbZD-1e55OQ3rol-00213N;
	Tue, 24 Oct 2017 16:41:54 +0200
To: "Burton, Ross" <ross.burton@intel.com>
References: <trinity-0e3ed1cd-c3b2-47d0-aac1-bfea6bc974ac-1508851020788@3c-app-gmx-bs63>
	<CAJTo0LYbB0qWGZVk1Lkdx++iTn53y9XbWw+QRT3UiYdJTQkORA@mail.gmail.com>
From: Arno Steffens <star@gmx.li>
Message-ID: <47fbe08c-2d00-7e49-4479-782da5b43bb1@gmx.li>
Date: Tue, 24 Oct 2017 16:41:53 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYbB0qWGZVk1Lkdx++iTn53y9XbWw+QRT3UiYdJTQkORA@mail.gmail.com>
X-Provags-ID: V03:K0:LN9x06nz8lijJ9SLzhqj4tB9AOEUDsju1XMDLMg3VAftSYPPUfo
	cucZU+uM8V4YfNmcNHWei/AaajzzAgK40XPpXG4J+bIW4vXXRZPdpqoIKzLTaEK1hsc8x3R
	wjEWwp17xk50Orc+0ivuCbI9/DSbYp0vOWx/40F7QL6IuAyiUq2ik8IScdhzHhi09uFWA3X
	WnZecq22nFed8KRB0/5ig==
X-UI-Out-Filterresults: notjunk:1;V01:K0:K12kEqorKCc=:/P7BYvoJwKNRRckcpiPc41
	TbvJaVUVdcRr403gNtH71OgPS98kggxYdtxyl/9USqq4gvV4qOLkkLISJxQZZ9EBXIk3alcIv
	LKPHakj2PmnubmhEffsiHcya/l46wz+fqelPkqHiuijiXvp5YiB2QygQ4mJxi6GV5/+iZtpwk
	pXVsGBQhb0OFCrBvJK/jf5fkWD52zRPewTtKG2/vsU92UZ/i9TIikwWSIH3iHM7iWeqDqiR7J
	H4faWW+V0IPLs1Z6pA4pc4OJcCYdyqDIJOAw3h1e5r1VfxNynnYLYyln2pZRYwecQ2hxcw1Np
	0EtJ2JYFPvD3GTBsXPObnz/mOzOdJca4wMOMXvU83inZeKleh+dqK8i/STV6UUAROYa3Wdx6y
	kEXmRkoB4pVUCe2mSkZp6BK0Pb2JmyzbVjebYaToMrZ0fEJsf4vreCWjt0+1S3/Y7UOFzYQNK
	L+54KzDx5Bpd2azpP0qvuiUk5UtlNe8YWADungy+UC6rEQi8rhtmQgQzwKksGzm3Zuc0LfVlI
	l33Yv23F3Nkj61jWdzz32efMX9DLF4AoBhbJ3AHrnyhDONx7Z4J+tA2KHosc+Qn1SI4iKuIdT
	kX+FthuflE77nk0L4ueJ48osbKIBMldtjs1CMzueehdUVirHGLfa3YWgTg8uIvkBY6xN+WGEb
	NnK61BhNl0T3rKT7YyswzlT6czBS3mhqScq79rO5kP9vBk1ncNdIqrLAeY8LBLzpgLxmQ+VGx
	PZS1EmDqJOLvpWL89h5t1K5hNN8xJIGt+jPvaGqSpnKnxdO3cFP/a/lQ0N4pY4qs+LhogeBZQ
	DUeOoKOOJk1MO7aQrWxhA++Yis70z0f3qeaKBg9FP2oJkvINz0=
Cc: "pokyyoctoproject.org" <poky@yoctoproject.org>
Subject: Re: snmpd
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
X-List-Received-Date: Tue, 24 Oct 2017 14:42:01 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Am 24.10.2017 um 15:28 schrieb Burton, Ross:
> On 24 October 2017 at 14:17, Arno Steffens <star@gmx.li
> <mailto:star@gmx.li>> wrote:
>
>     Sorry for asking - how to get snmpd into my rootfs?
>
>     I added net-snmp to my IMAGE_INSTALL. It creates the packages, but
>     at least the net-snmp-server-snmpd is not included in my rootfs. Is
>     there something to add?
>
>
> If you want the net-snmp-server-snmpd package in your image then add
> that to IMAGE_INSTALL.  Adding a recipe name doesn't automatically add
> all packages as that is rarely what you want to happen.
>
> Ross

Dear Ross,
You are right, in fact I would like just this, not all the snmp stuff in 
my rootfs. Hard for me to find out how to control this in detail.
Imho this packets, that can be added to IMAGE_INSTALL are mostly 
generating several ipk's.

But back to your suggestion:
I am quite sure I tried this but get an error message. Right now I am 
not at this PC, so I can't repeat it.
Arno

