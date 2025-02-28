Return-Path: <semc.2042@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44AFBC19776
	for <webhook@archiver.kernel.org>; Fri, 28 Feb 2025 14:44:39 +0000 (UTC)
Subject: glibc run-built-tests not working as expected when set to 'no'
To: poky@lists.yoctoproject.org
From: "rajmohan r" <semc.2042@gmail.com>
X-Originating-Location: US (136.226.245.19)
X-Originating-Platform: Linux Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 28 Feb 2025 06:44:37 -0800
Message-ID: <lWid.1740753877103406696.l8x3@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="UuhT7bz5lxKiw1bKBNRe"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 28 Feb 2025 14:44:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13544

--UuhT7bz5lxKiw1bKBNRe
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All

For glibc-y2038-tests recipe, when 'bitbake -c do_check glibc-y2038-tests'
is executed, could see that the tests binaries are also run.

Below is the do_check() contents from glibc-y2038-tests_2.39.bb

# Just build tests for target - do not run them
do_check:append () {
oe_runmake -i check run-built-tests=3Dno
}

On completion of do_check stage, test binaries are also run and test summar=
y
details are present at the end of 'log.do_check' file and is given below:
from log.do_check and time it takes to complete the do_check() stage is
12min to 13min for scarthgap branch.
=3D=3D=3D Summary of results =3D=3D=3D
74 FAIL
1172 PASS
15 XFAIL

Option 'run-built-tests' is not working as expected as said in the recipe
like build only the tests binaries but do not run tests binaries.

please let me know why test binaries are also been run when 'run-built-test=
s'
is set to 'no' for 'bitbake -c do_check glibc-y2038-tests' or running the
tests binaries is an expected behaviour for the above do_check() stage.

Thanks for reading the message.
regards
rajmohan

--UuhT7bz5lxKiw1bKBNRe
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi All</div>
<div>&nbsp;</div>
<div>For glibc-y2038-tests recipe, when 'bitbake -c do_check glibc-y2038-te=
sts'</div>
<div>is executed, could see that the tests binaries are also run.</div>
<div>&nbsp;</div>
<div>Below is the do_check() contents from glibc-y2038-tests_2.39.bb</div>
<div>&nbsp;</div>
<div># Just build tests for target - do not run them</div>
<div>do_check:append () {</div>
<div>&nbsp; &nbsp; oe_runmake -i check run-built-tests=3Dno</div>
<div>}</div>
<div>&nbsp;</div>
<div>On completion of do_check stage, test binaries are also run and test s=
ummary</div>
<div>details are present at the end of 'log.do_check' file and is given bel=
ow:</div>
<div>from log.do_check and time it takes to complete the do_check() stage i=
s</div>
<div>12min to 13min for scarthgap branch.</div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>=3D=3D=3D Summary of results =3D=3D=3D</span></div>
<div>&nbsp; &nbsp; &nbsp;74 FAIL</div>
<div>&nbsp; &nbsp;1172 PASS</div>
<div>&nbsp; &nbsp; &nbsp;15 XFAIL</div>
<div>&nbsp;</div>
<div>Option 'run-built-tests' is not working as expected as said in the rec=
ipe</div>
<div>like build only the tests binaries but do not run tests binaries.</div=
>
<div>&nbsp;</div>
<div>please let me know why test binaries are also been run when 'run-built=
-tests'</div>
<div>is set to 'no' for 'bitbake -c do_check glibc-y2038-tests' or running =
the</div>
<div>tests binaries is an expected behaviour for the above do_check() stage=
.</div>
<div>&nbsp;</div>
<div>Thanks for reading the message.</div>
<div>regards</div>
<div>rajmohan</div>

--UuhT7bz5lxKiw1bKBNRe--

