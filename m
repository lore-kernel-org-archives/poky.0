Subject: Is it possible to build/link a single recipe with musl if glibc is the default
To: poky@lists.yoctoproject.org
From: "Kevin" <kevin@smartthings.com>
X-Originating-Location: Grandville, Michigan, US (68.61.88.186)
X-Originating-Platform: Mac Chrome 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 25 Nov 2019 17:28:41 -0800
Message-ID: <EdcV.1574731721695208194.T7CE@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qqn7ZjMcuht31WYO5Ksm"

--qqn7ZjMcuht31WYO5Ksm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

We're building a custom image and using glibc as the standard library.=C2=
=A0 We have a need for a couple recipes that produce binaries that need to=
 be 100% statically linked (using musl).=C2=A0 Is this possible to do?=C2=
=A0 Is this achievable with the multilib class?=C2=A0 Is there another app=
roach that is worth looking into or is this not possible?=C2=A0 It is not d=
esirable in our case to change the default libc to musl, we'd prefer to onl=
y use musl in a couple recipes if at all possible.

Thanks,
Kevin

--qqn7ZjMcuht31WYO5Ksm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />We're building a custom image and using glibc as the stan=
dard library.&nbsp; We have a need for a couple recipes that produce binari=
es that need to be 100% statically linked (using musl).&nbsp; Is this possi=
ble to do?&nbsp; Is this achievable with the multilib class?&nbsp; Is there=
 another approach that is worth looking into or is this not possible?&nbsp;=
 It is not desirable in our case to change the default libc to musl, we'd p=
refer to only use musl in a couple recipes if at all possible.<br /><br />T=
hanks,<br />Kevin

--qqn7ZjMcuht31WYO5Ksm--
