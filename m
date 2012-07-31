Return-Path: <B29882@freescale.com>
Received: from db3outboundpool.messaging.microsoft.com
	(db3ehsobe002.messaging.microsoft.com [213.199.154.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DA47E0027B
	for <poky@yoctoproject.org>; Tue, 31 Jul 2012 14:43:33 -0700 (PDT)
Received: from mail104-db3-R.bigfish.com (10.3.81.252) by
	DB3EHSOBE005.bigfish.com (10.3.84.25) with Microsoft SMTP Server id
	14.1.225.23; Tue, 31 Jul 2012 21:43:31 +0000
Received: from mail104-db3 (localhost [127.0.0.1])	by
	mail104-db3-R.bigfish.com (Postfix) with ESMTP id D1AC78036F;
	Tue, 31 Jul 2012 21:43:31 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -4
X-BigFish: VS-4(zzbb2dI98dI9371I148cI1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail104-db3 (localhost.localdomain [127.0.0.1]) by mail104-db3
	(MessageSwitch) id 1343771010610999_28413;
	Tue, 31 Jul 2012 21:43:30 +0000 (UTC)
Received: from DB3EHSMHS006.bigfish.com (unknown [10.3.81.227])	by
	mail104-db3.bigfish.com (Postfix) with ESMTP id 917252E0048;
	Tue, 31 Jul 2012 21:43:30 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS006.bigfish.com
	(10.3.87.106) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 31 Jul 2012 21:43:30 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.109]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0298.005; Tue, 31 Jul 2012 16:43:29 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Scott Garman <scott.a.garman@intel.com>
Thread-Topic: [poky] [denzil][PATCH 1/9] bitbake/fetch: Spell out which
	fetcher backends support and recommend checksums
Thread-Index: AQHNbqX2zHQCco3130e8Mjn8BFdUyZdEQIUAgAAA8AA=
Date: Tue, 31 Jul 2012 21:43:28 +0000
Message-ID: <CAEsOVNdpWGp7rUbszWdSeu9u3w91Zk-j1u2FBJNO0f0UiZx39Q@mail.gmail.com>
References: <cover.1341354357.git.raj.khem@gmail.com>
	<f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
	<CAEsOVNdkMmJT5T3zUbKHcFXEFWPbHJ-rXrSnU=aaeBUjE--rJw@mail.gmail.com>
	<501850A0.1020302@intel.com>
In-Reply-To: <501850A0.1020302@intel.com>
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
X-List-Received-Date: Tue, 31 Jul 2012 21:43:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <3E7E952AE5D08E499255A60B06A6ACBC@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 31, 2012 at 4:39 PM, Scott Garman <scott.a.garman@intel.com> wr=
ote:
> On 07/30/2012 03:52 PM, McClintock Matthew-B29882 wrote:
>>
>> On Tue, Jul 3, 2012 at 5:32 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>> From: Richard Purdie <richard.purdie@linuxfoundation.org>
>>>
>>> There were some hardcoded behaviours in the system for which backends
>>> support checksums verses which backends recommend them verses which
>>> don't recommend them.
>>>
>>> This moves the functionality into specific fetchers and then makes the
>>> general code generic. This cleans up the codebase and fixes some corner
>>> cases such as trying to checksum directories returned by the git fetche=
r.
>>>
>>> (Bitbake rev: ef6d268f7b8527541a7fb044cf95a973be4097f4)
>>>
>>> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>>
>>
>> This patch is causing the following issue in the denzil branch of poky:
>>
>> NOTE: package libpam-1.1.5-r3: task do_fetch: Started
>> ERROR: Error executing a python function in
>>
>> /local/home/mattsm/git/poky-upstream/meta/recipes-extended/pam/libpam_1.=
1.5.bb:
>> IOError: [Errno 2] No such file or directory:
>>
>> '/local/home/mattsm/git/poky-upstream/meta/recipes-extended/pam/libpam/.=
/pam.d/*'
>
>
> Thanks for testing and reporting this, Matthew. I have rebased my
> sgarman/denzil-1.2.2 branch to remove this commit.
>
> I'm going through my denzil queue of patches right now and hope to be on =
top
> of everything by EOD - I will send out an overall status email then in wh=
ich
> I will also announce renaming my branch to simply sgarman/denzil-next.

Scott,

I have a few more patches on my tree as well:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dmattsm/denz=
il

I will rebase once you are done.

-M

>
> Scott
>
>
>> ERROR: The stack trace of python calls that resulted in this
>> exception/failure was:
>> ERROR:   File "base_do_fetch", line 18, in <module>
>> ERROR:
>> ERROR:   File "base_do_fetch", line 13, in base_do_fetch
>> ERROR:
>> ERROR:   File
>> "/local/home/mattsm/git/poky-upstream/bitbake/lib/bb/fetch2/__init__.py"=
,
>> line 1037, in download
>> ERROR:     update_stamp(u, ud, self.d)
>> ERROR:
>> ERROR:   File
>> "/local/home/mattsm/git/poky-upstream/bitbake/lib/bb/fetch2/__init__.py"=
,
>> line 335, in update_stamp
>> ERROR:     verify_checksum(u, ud, d)
>> ERROR:
>> ERROR:   File
>> "/local/home/mattsm/git/poky-upstream/bitbake/lib/bb/fetch2/__init__.py"=
,
>> line 277, in verify_checksum
>> ERROR:     md5data =3D bb.utils.md5_file(ud.localpath)
>> ERROR:
>> ERROR:   File
>> "/local/home/mattsm/git/poky-upstream/bitbake/lib/bb/utils.py",
>> line 482, in md5_file
>> ERROR:     for line in open(filename):
>> ERROR:
>> ERROR: The code that was being executed was:
>> ERROR:      0014:        except bb.fetch2.BBFetchException, e:
>> ERROR:      0015:            raise bb.build.FuncFailed(e)
>> ERROR:      0016:
>> ERROR:      0017:
>> ERROR:  *** 0018:base_do_fetch(d)
>> ERROR:      0019:
>> ERROR: (file: 'base_do_fetch', lineno: 18, function: <module>)
>> ERROR:      0009:       bb.data.update_data(localdata)
>> ERROR:      0010:
>> ERROR:      0011:        try:
>> ERROR:      0012:            fetcher =3D bb.fetch2.Fetch(src_uri, locald=
ata)
>> ERROR:  *** 0013:            fetcher.download()
>> ERROR:      0014:        except bb.fetch2.BBFetchException, e:
>> ERROR:      0015:            raise bb.build.FuncFailed(e)
>> ERROR:      0016:
>> ERROR:      0017:
>> ERROR: (file: 'base_do_fetch', lineno: 13, function: base_do_fetch)
>> ERROR: Function failed: base_do_fetch
>> ERROR: Logfile of failure stored in:
>>
>> /local/home/mattsm/git/poky-upstream/build-denzil/tmp/work/ppce5500-poky=
-linux/libpam-1.1.5-r3/temp/log.do_fetch.9368
>> NOTE: package libpam-1.1.5-r3: task do_fetch: Failed
>> ERROR: Task 0
>> (/local/home/mattsm/git/poky-upstream/meta/recipes-extended/pam/libpam_1=
.1.5.bb,
>> do_fetch) failed with exit code '1'
>>
>> -M
>
>
>
> --
> Scott Garman
> Embedded Linux Engineer - Yocto Project
> Intel Open Source Technology Center
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky=


