Return-Path: <aalonso@secretlab.ca>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 07C764C801BF
	for <poky@yoctoproject.org>; Mon,  9 May 2011 09:25:00 -0500 (CDT)
Received: by iwr19 with SMTP id 19so6798177iwr.35
	for <poky@yoctoproject.org>; Mon, 09 May 2011 07:25:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.231.21.146 with SMTP id j18mr4589570ibb.24.1304951098714; Mon,
	09 May 2011 07:24:58 -0700 (PDT)
Received: by 10.231.157.209 with HTTP; Mon, 9 May 2011 07:24:58 -0700 (PDT)
In-Reply-To: <4DC634D6.2060504@gmail.com>
References: <cover.1304621382.git.aalonso@secretlab.ca>
	<04458e66f8ac3c7c3a476c23c178161dc45215e5.1304621382.git.aalonso@secretlab.ca>
	<4DC634D6.2060504@gmail.com>
Date: Mon, 9 May 2011 09:24:58 -0500
Message-ID: <BANLkTikbw3+6SKM37AFDq=urby7X=wMxOw@mail.gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: Khem Raj <raj.khem@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/7] insane: add micrblaze target info
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
X-List-Received-Date: Mon, 09 May 2011 14:25:01 -0000
Content-Type: multipart/alternative; boundary=00151773e560b02af904a2d89afb

--00151773e560b02af904a2d89afb
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I'm integrating a third party toolchain which triplet is:
microblaze-unknown-linux-gnu-
Setting
TARGET_OS = "linux-gnu"; TARGET_VENDOR = "-unknown" resolves
the toolchain triplet in bitbake.conf and I'm able to integrate the
toolchain without
messing around with the third party toolchain.

Let me work if I can override insane.bbclass to be less third party
toolchain specific.

Regards


On Sun, May 8, 2011 at 1:14 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On 5/5/2011 12:10 PM, Adrian Alonso wrote:
>
>> * package_qa_get_machine_dict
>> * Add microblaze dic entry for QA
>> * Prebuilt toolchain triplet microblaze-unknown-linux-gnu-
>> * TARGET_OS is linux-gnu for this toolchain
>>
>> Signed-off-by: Adrian Alonso<aalonso@secretlab.ca>
>> ---
>>  meta/classes/insane.bbclass |    4 +++-
>>  1 files changed, 3 insertions(+), 1 deletions(-)
>>
>> diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass
>> index 742be5e..e9d4bfa 100644
>> --- a/meta/classes/insane.bbclass
>> +++ b/meta/classes/insane.bbclass
>> @@ -85,7 +85,9 @@ def package_qa_get_machine_dict():
>>              "linux-uclibcspe" : {
>>                          "powerpc":    (20,     0,    0,          False,
>>       32),
>>                        },
>> -
>> +            "linux-gnu" :       {
>> +                        "microblaze": (47787,  0,    0,          False,
>>       32),
>> +                      },
>>
>
>
> we generally use *-*-linux except for arm and ppc (with spe ) can
> microblaze just use the same triplet ?
>
>>         }
>>
>>
>>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
Adrian Alonso
Secret Lab Technologies Ltd.

--00151773e560b02af904a2d89afb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>I&#39;m integrating a third party toolchain which tr=
iplet is:</div><div><meta http-equiv=3D"content-type" content=3D"text/html;=
 charset=3Dutf-8">microblaze-unknown-linux-gnu-</div><div>Setting</div><div=
>TARGET_OS =3D &quot;linux-gnu&quot;; TARGET_VENDOR =3D &quot;-unknown&quot=
; resolves</div>
<div>the toolchain triplet in bitbake.conf and I&#39;m able to integrate th=
e toolchain without</div><div>messing around with the third party toolchain=
.</div><div><br></div><div>Let me work if I can override insane.bbclass to =
be less third party toolchain specific.</div>
<div><br></div><div>Regards</div><div><br></div><div><br><div class=3D"gmai=
l_quote">On Sun, May 8, 2011 at 1:14 AM, Khem Raj <span dir=3D"ltr">&lt;<a =
href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt;</span> wrote:=
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;">On 5/5/2011 12:10 PM, Adrian Alonso wrote:<=
br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
* package_qa_get_machine_dict<br>
* Add microblaze dic entry for QA<br>
* Prebuilt toolchain triplet microblaze-unknown-linux-gnu-<br>
* TARGET_OS is linux-gnu for this toolchain<br>
<br>
Signed-off-by: Adrian Alonso&lt;<a href=3D"mailto:aalonso@secretlab.ca" tar=
get=3D"_blank">aalonso@secretlab.ca</a>&gt;<br>
---<br>
 =A0meta/classes/insane.bbclass | =A0 =A04 +++-<br>
 =A01 files changed, 3 insertions(+), 1 deletions(-)<br>
<br>
diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass<br>
index 742be5e..e9d4bfa 100644<br>
--- a/meta/classes/insane.bbclass<br>
+++ b/meta/classes/insane.bbclass<br>
@@ -85,7 +85,9 @@ def package_qa_get_machine_dict():<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;linux-uclibcspe&quot; : {<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;powerpc&quot;: =
=A0 =A0(20, =A0 =A0 0, =A0 =A00, =A0 =A0 =A0 =A0 =A0False, =A0 =A0 =A0 =A0 =
32),<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0},<br>
-<br>
+ =A0 =A0 =A0 =A0 =A0 =A0&quot;linux-gnu&quot; : =A0 =A0 =A0 {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;microblaze&quot;: (4=
7787, =A00, =A0 =A00, =A0 =A0 =A0 =A0 =A0False, =A0 =A0 =A0 =A0 32),<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0},<br>
</blockquote>
<br>
<br>
we generally use *-*-linux except for arm and ppc (with spe ) can microblaz=
e just use the same triplet ?<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =A0 =A0 =A0 =A0 }<br>
<br>
<br>
</blockquote>
<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div>Adrian Alonso</div=
>Secret Lab Technologies Ltd.<br>
</div>

--00151773e560b02af904a2d89afb--
