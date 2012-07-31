Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe004.messaging.microsoft.com [216.32.181.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DCA4E00283
	for <poky@yoctoproject.org>; Tue, 31 Jul 2012 15:06:28 -0700 (PDT)
Received: from mail2-ch1-R.bigfish.com (10.43.68.251) by
	CH1EHSOBE006.bigfish.com (10.43.70.56) with Microsoft SMTP Server id
	14.1.225.23; Tue, 31 Jul 2012 22:06:26 +0000
Received: from mail2-ch1 (localhost [127.0.0.1])	by mail2-ch1-R.bigfish.com
	(Postfix) with ESMTP id 3CB0B260374;
	Tue, 31 Jul 2012 22:06:26 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -4
X-BigFish: VS-4(zzbb2dI98dI9371I148cI1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail2-ch1 (localhost.localdomain [127.0.0.1]) by mail2-ch1
	(MessageSwitch) id 1343772383268727_4966;
	Tue, 31 Jul 2012 22:06:23 +0000 (UTC)
Received: from CH1EHSMHS014.bigfish.com (snatpool3.int.messaging.microsoft.com
	[10.43.68.228])	by mail2-ch1.bigfish.com (Postfix) with ESMTP id
	356C6200049; Tue, 31 Jul 2012 22:06:23 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS014.bigfish.com
	(10.43.70.14) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 31 Jul 2012 22:06:19 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.109]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0298.005; Tue, 31 Jul 2012 17:06:18 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Scott Garman <scott.a.garman@intel.com>
Thread-Topic: [poky] [denzil][PATCH 1/9] bitbake/fetch: Spell out which
	fetcher backends support and recommend checksums
Thread-Index: AQHNbqX2zHQCco3130e8Mjn8BFdUyZdEQIUAgAAA8ACAAAW8gIAAAKSA
Date: Tue, 31 Jul 2012 22:06:17 +0000
Message-ID: <CAEsOVNdR9Dc4zPw1yi2pktj61FTyYL+VTQa_uQ-3EeixDQop9A@mail.gmail.com>
References: <cover.1341354357.git.raj.khem@gmail.com>
	<f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
	<CAEsOVNdkMmJT5T3zUbKHcFXEFWPbHJ-rXrSnU=aaeBUjE--rJw@mail.gmail.com>
	<501850A0.1020302@intel.com>
	<CAEsOVNdpWGp7rUbszWdSeu9u3w91Zk-j1u2FBJNO0f0UiZx39Q@mail.gmail.com>
	<50185639.9020104@intel.com>
In-Reply-To: <50185639.9020104@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [denzil][PATCH 1/9] bitbake/fetch: Spell out which fetcher backends support and recommend checksums
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 31 Jul 2012 22:06:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <115EBD1C3312B740AC89F1899B50068D@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 31, 2012 at 5:03 PM, Scott Garman <scott.a.garman@intel.com> wr=
ote:
> On 07/31/2012 02:43 PM, McClintock Matthew-B29882 wrote:
>>
>> On Tue, Jul 31, 2012 at 4:39 PM, Scott Garman <scott.a.garman@intel.com>
>> wrote:
>>>
>>> On 07/30/2012 03:52 PM, McClintock Matthew-B29882 wrote:
>>>>
>>>>
>>>> On Tue, Jul 3, 2012 at 5:32 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>>>
>>>>>
>>>>> From: Richard Purdie <richard.purdie@linuxfoundation.org>
>>>>>
>>>>> There were some hardcoded behaviours in the system for which backends
>>>>> support checksums verses which backends recommend them verses which
>>>>> don't recommend them.
>>>>>
>>>>> This moves the functionality into specific fetchers and then makes th=
e
>>>>> general code generic. This cleans up the codebase and fixes some corn=
er
>>>>> cases such as trying to checksum directories returned by the git
>>>>> fetcher.
>>>>>
>>>>> (Bitbake rev: ef6d268f7b8527541a7fb044cf95a973be4097f4)
>>>>>
>>>>> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>>>>
>>>>
>>>>
>>>> This patch is causing the following issue in the denzil branch of poky=
:
>>>>
>>>> NOTE: package libpam-1.1.5-r3: task do_fetch: Started
>>>> ERROR: Error executing a python function in
>>>>
>>>>
>>>> /local/home/mattsm/git/poky-upstream/meta/recipes-extended/pam/libpam_=
1.1.5.bb:
>>>> IOError: [Errno 2] No such file or directory:
>>>>
>>>>
>>>> '/local/home/mattsm/git/poky-upstream/meta/recipes-extended/pam/libpam=
/./pam.d/*'
>>>
>>>
>>>
>>> Thanks for testing and reporting this, Matthew. I have rebased my
>>> sgarman/denzil-1.2.2 branch to remove this commit.
>>>
>>> I'm going through my denzil queue of patches right now and hope to be o=
n
>>> top
>>> of everything by EOD - I will send out an overall status email then in
>>> which
>>> I will also announce renaming my branch to simply sgarman/denzil-next.
>>
>>
>> Scott,
>>
>> I have a few more patches on my tree as well:
>>
>>
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dmattsm/d=
enzil
>>
>> I will rebase once you are done.
>
>
> I'm about to merge most of these, but the two recent ones with
> "NEEDSTOUPSTREAM" git subjects are not in proper format and will need to =
be
> redone.

Sorry, those are pending upstream patches being accepted. They can be
a) ignored until I can cherry-pick from upstream or b) I can remove
them for you.

-M

>
> Scott
>
>
> --
> Scott Garman
> Embedded Linux Engineer - Yocto Project
> Intel Open Source Technology Center
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky=


