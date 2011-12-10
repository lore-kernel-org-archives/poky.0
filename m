Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89E53E00305
	for <poky@yoctoproject.org>; Fri,  9 Dec 2011 20:08:53 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBA48qI0012546
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 9 Dec 2011 20:08:52 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 9 Dec 2011 20:08:51 -0800
Message-ID: <4EE2DB52.5050107@windriver.com>
Date: Fri, 9 Dec 2011 22:08:50 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:8.0) Gecko/20111105 Thunderbird/8.0
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4EE2887C.3000601@gherzan.ro> <4EE29B38.3030104@linux.intel.com>
	<4EE2A184.6020901@gherzan.ro>
In-Reply-To: <4EE2A184.6020901@gherzan.ro>
Subject: Re: gnutls-2.12.14-r3.1 - strange rpm names yocto
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
X-List-Received-Date: Sat, 10 Dec 2011 04:08:53 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/9/11 6:02 PM, Andrei Gherzan wrote:
>
>> This looks like our debian-style package renaming, which renames
>> libraries to include the lib prefix.
>>
>> We have a brief blurb about it here:
>> http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#ref-classes-debian
>>
>> Regards,
>> Joshua
>
> Yes it looks like. But here is the problem: i included this pkg in IMAGE-INSTALL
> and i found library from -extra with even if
> LICENSE_${PN}-extra = "GPLv3+"
>
> And i think that this could be because of this name style change.

There are two issues here.  The first is that IMAGE_INSTALL is the binary 
package name.  This name can be munged with the renaming as Joshua mentioned. 
Most people assume that this name matches the source recipe name.  So there is 
confusion to deal with.

The other issue is that any place a user is asked to list a -binary- package 
name, it should go through the same munging process as it does when things are 
generated.  The IMAGE_INSTALL does not do this at this time.  (It -really- 
should!)  This has been on my list of things to work on for a while now, but I 
have not had the time to get to it.

Patches are welcome!  ;)

--Mark

> --
> *Andrei Gherzan*, Engineer
> mobile +40.744.478.414 fax +40.031.816.28.12
> Email: andrei@gherzan.ro
> Email: andrei.gherzan@windriver.com
> Romania
>
> Acest e-mail reprezinta corespondenta pentru care dumneavoastra v-ati exprimat
> acordul si se supune politicii noastre de anti-spamming.
> Daca totusi considerati ca acest email reprezinta spamming va rugam sa ne
> contactati folosind e-mail-ul info@gherzan.ro. Multumim.
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


