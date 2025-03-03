Return-Path: <semc.2042@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F065C282C5
	for <webhook@archiver.kernel.org>; Mon,  3 Mar 2025 12:46:35 +0000 (UTC)
Subject: Re: glibc run-built-tests not working as expected when set to 'no'
To: poky@lists.yoctoproject.org
From: "rajmohan r" <semc.2042@gmail.com>
X-Originating-Location: AU (167.103.54.165)
X-Originating-Platform: Linux Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 03 Mar 2025 04:46:30 -0800
References: <ff38fae0-d613-4031-9ca0-46a14a7cb329@gmail.com>
In-Reply-To: <ff38fae0-d613-4031-9ca0-46a14a7cb329@gmail.com>
Message-ID: <18989.1741005990320205271@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="HOaiyrpZTrGlQRQbVKLQ"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 03 Mar 2025 12:46:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13551

--HOaiyrpZTrGlQRQbVKLQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Mar 1, 2025 at 04:25 AM, Khem Raj wrote:

>=20
> On 2/28/25 6:44 AM, rajmohan r via lists.yoctoproject.org wrote:
>=20
>> Hi All
>>=20
>> For glibc-y2038-tests recipe, when 'bitbake -c do_check glibc-y2038-test=
s'
>>=20
>> is executed, could see that the tests binaries are also run.
>>=20
>> Below is the do_check() contents from glibc-y2038-tests_2.39.bb
>>=20
>> # Just build tests for target - do not run them
>> do_check:append () {
>> oe_runmake -i check run-built-tests=3Dno
>> }
>>=20
>> On completion of do_check stage, test binaries are also run and test
>> summary
>> details are present at the end of 'log.do_check' file and is given below=
:
>> from log.do_check and time it takes to complete the do_check() stage is
>> 12min to 13min for scarthgap branch.
>> =3D=3D=3D Summary of results =3D=3D=3D
>> 74 FAIL
>> 1172 PASS
>> 15 XFAIL
>>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> there are certain tests which do not require running, its possible thats
> being reported here. Can you share a sample of test which is executed lik=
e
> it should happen at runtime?
>=20
>=20

shown below few tests excerpts from failure list:

FAIL: lint-makefiles
FAIL: conform/ISO/setjmp.h/conform
FAIL: conform/ISO/stdlib.h/conform
FAIL: conform/ISO/stdlib.h/linknamespace
FAIL: conform/ISO11/setjmp.h/conform
FAIL: conform/ISO11/stdio.h/conform
FAIL: conform/ISO11/stdlib.h/conform
FAIL: conform/ISO11/stdlib.h/linknamespace
FAIL: conform/ISO11/wchar.h/conform
FAIL: conform/ISO99/setjmp.h/conform
FAIL: conform/ISO99/stdio.h/conform

similarly below are few passed tests excerpts from pass list:
PASS: dlfcn/check-abi-libdl
PASS: elf/check-abi-ld
PASS: elf/check-abi-libc
PASS: elf/check-abi-version-libc
PASS: elf/check-cet
PASS: elf/check-execstack
PASS: elf/check-initfini
PASS: elf/check-localplt
PASS: elf/check-textrel
PASS: elf/check-tst-relr-pie
PASS: elf/check-wx-segment
PASS: elf/tst-glibcelf
PASS: elf/tst-relro-ldso
PASS: elf/tst-relro-libc
PASS: hesiod/check-abi-libnss_hesiod
PASS: locale/check-abi-libBrokenLocale
PASS: login/check-abi-libutil
PASS: malloc/check-abi-libc_malloc_debug
PASS: math/check-abi-libm
PASS: math/test-tgmath3-macro-list
PASS: mathvec/check-abi-libmvec
PASS: misc/tst-glibcsyscalls
PASS: misc/tst-mman-consts
PASS: misc/tst-mount-compile
PASS: misc/tst-mount-consts
PASS: misc/tst-pidfd-consts
FAIL: misc/tst-syscall-list
PASS: nis/check-abi-libnsl
PASS: nptl/check-abi-libpthread
PASS: nptl_db/check-abi-libthread_db
PASS: nptl_db/db-symbols
PASS: nss/check-abi-libnss_compat
PASS: nss/check-abi-libnss_db
PASS: nss/check-abi-libnss_files
XFAIL: posix/annexc
PASS: resolv/check-abi-libanl
PASS: resolv/check-abi-libnss_dns
PASS: resolv/check-abi-libresolv
PASS: rt/check-abi-librt
PASS: signal/tst-signal-numbers
PASS: socket/tst-socket-consts
PASS: stdio-common/tst-errno-manual
PASS: stdlib/isomac
PASS: support/tst-glibcpp

>=20
>=20
>>=20
>> Option 'run-built-tests' is not working as expected as said in the recip=
e
>> like build only the tests binaries but do not run tests binaries.
>>=20
>> please let me know why test binaries are also been run when
>> 'run-built-tests'
>> is set to 'no' for 'bitbake -c do_check glibc-y2038-tests' or running th=
e
>> tests binaries is an expected behaviour for the above do_check() stage.
>>=20
>> Thanks for reading the message.
>> regards
>> rajmohan
>>=20
>> =C2=A0
>=20
>

--HOaiyrpZTrGlQRQbVKLQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Sat, Mar 1, 2025 at 04:25 AM, Khem Raj wrote:</div>
<div>
<blockquote>
<div class=3D"moz-cite-prefix">On 2/28/25 6:44 AM, rajmohan r via lists.yoc=
toproject.org wrote:</div>
<blockquote cite=3D"mid:lWid.1740753877103406696.l8x3@lists.yoctoproject.or=
g">
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
</blockquote>
<p>&nbsp;</p>
<p>there are certain tests which do not require running, its possible thats=
 being reported here. Can you share a sample of test which is executed like=
 it should happen at runtime?</p>
</blockquote>
shown below few tests excerpts from failure list:</div>
<div>&nbsp;</div>
<div>FAIL: lint-makefiles<br />FAIL: conform/ISO/setjmp.h/conform<br />FAIL=
: conform/ISO/stdlib.h/conform<br />FAIL: conform/ISO/stdlib.h/linknamespac=
e<br />FAIL: conform/ISO11/setjmp.h/conform<br />FAIL: conform/ISO11/stdio.=
h/conform<br />FAIL: conform/ISO11/stdlib.h/conform<br />FAIL: conform/ISO1=
1/stdlib.h/linknamespace<br />FAIL: conform/ISO11/wchar.h/conform<br />FAIL=
: conform/ISO99/setjmp.h/conform<br />FAIL: conform/ISO99/stdio.h/conform</=
div>
<div>&nbsp;</div>
<div>similarly below are few passed tests excerpts from pass list:</div>
<div>
<div>PASS: dlfcn/check-abi-libdl</div>
<div>PASS: elf/check-abi-ld<br />PASS: elf/check-abi-libc<br />PASS: elf/ch=
eck-abi-version-libc<br />PASS: elf/check-cet<br />PASS: elf/check-execstac=
k<br />PASS: elf/check-initfini<br />PASS: elf/check-localplt<br />PASS: el=
f/check-textrel<br />PASS: elf/check-tst-relr-pie<br />PASS: elf/check-wx-s=
egment<br />PASS: elf/tst-glibcelf<br />PASS: elf/tst-relro-ldso<br />PASS:=
 elf/tst-relro-libc</div>
<div>PASS: hesiod/check-abi-libnss_hesiod</div>
<div>PASS: locale/check-abi-libBrokenLocale</div>
<div>PASS: login/check-abi-libutil</div>
<div>PASS: malloc/check-abi-libc_malloc_debug</div>
<div>PASS: math/check-abi-libm<br />PASS: math/test-tgmath3-macro-list</div=
>
<div>PASS: mathvec/check-abi-libmvec</div>
<div>PASS: misc/tst-glibcsyscalls<br />PASS: misc/tst-mman-consts<br />PASS=
: misc/tst-mount-compile<br />PASS: misc/tst-mount-consts<br />PASS: misc/t=
st-pidfd-consts<br />FAIL: misc/tst-syscall-list</div>
<div>PASS: nis/check-abi-libnsl</div>
<div>PASS: nptl/check-abi-libpthread</div>
<div>PASS: nptl_db/check-abi-libthread_db<br />PASS: nptl_db/db-symbols</di=
v>
<div>PASS: nss/check-abi-libnss_compat<br />PASS: nss/check-abi-libnss_db<b=
r />PASS: nss/check-abi-libnss_files</div>
<div>XFAIL: posix/annexc</div>
<div>PASS: resolv/check-abi-libanl<br />PASS: resolv/check-abi-libnss_dns<b=
r />PASS: resolv/check-abi-libresolv</div>
<div>PASS: rt/check-abi-librt</div>
<div>PASS: signal/tst-signal-numbers</div>
<div>PASS: socket/tst-socket-consts</div>
<div>PASS: stdio-common/tst-errno-manual</div>
<div>PASS: stdlib/isomac</div>
<div>PASS: support/tst-glibcpp</div>
<br /><br />
<blockquote>
<blockquote cite=3D"mid:lWid.1740753877103406696.l8x3@lists.yoctoproject.or=
g">
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
<br /><fieldset class=3D"moz-mime-attachment-header"></fieldset>
<pre class=3D"moz-quote-pre">&nbsp;</pre>
</blockquote>
</blockquote>
</div>

--HOaiyrpZTrGlQRQbVKLQ--

