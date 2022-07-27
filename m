Subject: [kirkstone ] Need help on poky build
To: poky@lists.yoctoproject.org
From: "Rahul Chauhan" <rahulchauhankitps@gmail.com>
X-Originating-Location: Melbourne, Victoria, AU (155.190.53.6)
X-Originating-Platform: Windows Chrome 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 27 Jul 2022 02:03:33 -0700
Message-ID: <J1HS.1658912613254135896.mk3h@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="84T0LicvLrRKRybb31RV"

--84T0LicvLrRKRybb31RV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I am trying to build python3 in poky (kirkstone branch)

but getting below error.

I checked there is some python changes in kirkstone reease
https://docs.yoctoproject.org/migration-guides/migration-4.0.html#python-ch=
anges

But don't have much idea.

can any one please guide me to fix this error.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
ERROR: python3-native-3.10.4-r0 do_install: ExecutionError(' /home/rahul/ki=
rkstone/poky/build/tmp/work/x86_64-linux/python3-native/3.10.4-r0/temp/run.=
do_install.3686780', 1, None, None)
ERROR: Logfile of failure stored in: /home/rahul/kirkstone/poky/build/tmp/w=
ork/x86_64-linux/python3-native/3.10.4-r0/temp/log.do_install.3686780
Log data follows:
| DEBUG: Executing python function autotools_aclocals
| DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 'bit-=
64', 'x86_64-linux', 'common']
| DEBUG: Python function autotools_aclocals finished
| DEBUG: Executing shell function do_install
| Failed to build these modules:
| _hashlib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 _ssl
| WARNING: exit code 1 from a shell command.
ERROR: Task (virtual:native:/home/rahul/kirkstone/poky/meta/recipes-devtool=
s/python/python3_3.10.4.bb:do_install) failed with exit code '1'
NOTE: Tasks Summary: Attempted 857 tasks of which 850 didn't need to be rer=
un and 1 failed.
NOTE: Writing buildhistory
NOTE: Writing buildhistory took: 2 seconds

Summary: 1 task failed:
virtual:native:/home/rahul/kirkstone/poky/meta/recipes-devtools/python/pyth=
on3_3.10.4.bb:do_install
Summary: There was 1 WARNING message.
Summary: There was 1 ERROR message, returning a non-zero exit code.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

--84T0LicvLrRKRybb31RV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Team,<br /><br />I am trying to build python3 in poky (kirkstone br=
anch)<br /><br />but getting below error.&nbsp;<br /><br />I checked there =
is some python changes in kirkstone reease&nbsp;<br /><a href=3D"https://do=
cs.yoctoproject.org/migration-guides/migration-4.0.html#python-changes" tar=
get=3D"_blank" rel=3D"noopener">https://docs.yoctoproject.org/migration-gui=
des/migration-4.0.html#python-changes</a><br /><br />But don't have much id=
ea.<br /><br />can any one please guide me to fix this error.<br /><br />=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br />ERROR: python3-native-3.10.4-r0 do_install: ExecutionError(' /home=
/rahul/kirkstone/poky/build/tmp/work/x86_64-linux/python3-native/3.10.4-r0/=
temp/run.do_install.3686780', 1, None, None)</div>
<div>ERROR: Logfile of failure stored in: /home/rahul/kirkstone/poky/build/=
tmp/work/x86_64-linux/python3-native/3.10.4-r0/temp/log.do_install.3686780<=
/div>
<div>Log data follows:</div>
<div>| DEBUG: Executing python function autotools_aclocals</div>
<div>| DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', =
'bit-64', 'x86_64-linux', 'common']</div>
<div>| DEBUG: Python function autotools_aclocals finished</div>
<div>| DEBUG: Executing shell function do_install</div>
<div>| Failed to build these modules:</div>
<div>| _hashlib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _ssl</div>
<div>| WARNING: exit code 1 from a shell command.</div>
<div>ERROR: Task (virtual:native:/home/rahul/kirkstone/poky/meta/recipes-de=
vtools/python/python3_3.10.4.bb:do_install) failed with exit code '1'</div>
<div>NOTE: Tasks Summary: Attempted 857 tasks of which 850 didn't need to b=
e rerun and 1 failed.</div>
<div>NOTE: Writing buildhistory</div>
<div>NOTE: Writing buildhistory took: 2 seconds</div>
<div>&nbsp;</div>
<div>Summary: 1 task failed:</div>
<div>&nbsp; virtual:native:/home/rahul/kirkstone/poky/meta/recipes-devtools=
/python/python3_3.10.4.bb:do_install</div>
<div>Summary: There was 1 WARNING message.</div>
<div>Summary: There was 1 ERROR message, returning a non-zero exit code.<br=
 />=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>

--84T0LicvLrRKRybb31RV--
