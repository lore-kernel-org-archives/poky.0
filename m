Return-Path: <semc.2042@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F912C28B20
	for <webhook@archiver.kernel.org>; Fri, 28 Mar 2025 08:15:15 +0000 (UTC)
Subject: Re: glibc run-built-tests not working as expected when set to 'no'
To: poky@lists.yoctoproject.org
From: "rajmohan r" <semc.2042@gmail.com>
X-Originating-Location: AU (167.103.54.113)
X-Originating-Platform: Linux Chrome 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 28 Mar 2025 01:15:11 -0700
References: <CANNYZj9aae71tgh4rRduu_Omx2+ZXidJLrRtSdu6ztmeJkbZpg@mail.gmail.com>
In-Reply-To: <CANNYZj9aae71tgh4rRduu_Omx2+ZXidJLrRtSdu6ztmeJkbZpg@mail.gmail.com>
Message-ID: <28798.1743149711563327312@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="ssBNEMLEEjhHmRDKUhpp"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 28 Mar 2025 08:15:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13579

--ssBNEMLEEjhHmRDKUhpp
Content-Type: multipart/alternative; boundary="REWcp5o6qg5E2FIxtWzk"

--REWcp5o6qg5E2FIxtWzk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 4, 2025 at 03:38 PM, Alexander Kanavin wrote:

>=20
> We certainly do not expect any tests in that recipe to run at build
> time. It is intended only for building and installing tests for a
> runtime environment which are then executed with ptest.
>=20
> If you can figure out a fix that avoids unnecessary running, that
> would be appreciated. I'd also question if we need the recipe at all
> at this point.

Attached the patch file (0001-glibc-y2038-tests-add-tests-special-in-run-bu=
ilt-tes.patch),
which shall generate only binaries and will not run the binaries.
Please review and let me know if you any info to share.
Let the recipe be there.

>=20
>=20
> Alex
>=20
> On Mon, 3 Mar 2025 at 13:46, rajmohan r via lists.yoctoproject.org
> <semc.2042=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
>> On Sat, Mar 1, 2025 at 04:25 AM, Khem Raj wrote:
>>=20
>> On 2/28/25 6:44 AM, rajmohan r via lists.yoctoproject.org wrote:
>>=20
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
>>=20
>>=20
>> there are certain tests which do not require running, its possible thats
>> being reported here. Can you share a sample of test which is executed li=
ke
>> it should happen at runtime?
>>=20
>> shown below few tests excerpts from failure list:
>>=20
>> FAIL: lint-makefiles
>> FAIL: conform/ISO/setjmp.h/conform
>> FAIL: conform/ISO/stdlib.h/conform
>> FAIL: conform/ISO/stdlib.h/linknamespace
>> FAIL: conform/ISO11/setjmp.h/conform
>> FAIL: conform/ISO11/stdio.h/conform
>> FAIL: conform/ISO11/stdlib.h/conform
>> FAIL: conform/ISO11/stdlib.h/linknamespace
>> FAIL: conform/ISO11/wchar.h/conform
>> FAIL: conform/ISO99/setjmp.h/conform
>> FAIL: conform/ISO99/stdio.h/conform
>>=20
>> similarly below are few passed tests excerpts from pass list:
>> PASS: dlfcn/check-abi-libdl
>> PASS: elf/check-abi-ld
>> PASS: elf/check-abi-libc
>> PASS: elf/check-abi-version-libc
>> PASS: elf/check-cet
>> PASS: elf/check-execstack
>> PASS: elf/check-initfini
>> PASS: elf/check-localplt
>> PASS: elf/check-textrel
>> PASS: elf/check-tst-relr-pie
>> PASS: elf/check-wx-segment
>> PASS: elf/tst-glibcelf
>> PASS: elf/tst-relro-ldso
>> PASS: elf/tst-relro-libc
>> PASS: hesiod/check-abi-libnss_hesiod
>> PASS: locale/check-abi-libBrokenLocale
>> PASS: login/check-abi-libutil
>> PASS: malloc/check-abi-libc_malloc_debug
>> PASS: math/check-abi-libm
>> PASS: math/test-tgmath3-macro-list
>> PASS: mathvec/check-abi-libmvec
>> PASS: misc/tst-glibcsyscalls
>> PASS: misc/tst-mman-consts
>> PASS: misc/tst-mount-compile
>> PASS: misc/tst-mount-consts
>> PASS: misc/tst-pidfd-consts
>> FAIL: misc/tst-syscall-list
>> PASS: nis/check-abi-libnsl
>> PASS: nptl/check-abi-libpthread
>> PASS: nptl_db/check-abi-libthread_db
>> PASS: nptl_db/db-symbols
>> PASS: nss/check-abi-libnss_compat
>> PASS: nss/check-abi-libnss_db
>> PASS: nss/check-abi-libnss_files
>> XFAIL: posix/annexc
>> PASS: resolv/check-abi-libanl
>> PASS: resolv/check-abi-libnss_dns
>> PASS: resolv/check-abi-libresolv
>> PASS: rt/check-abi-librt
>> PASS: signal/tst-signal-numbers
>> PASS: socket/tst-socket-consts
>> PASS: stdio-common/tst-errno-manual
>> PASS: stdlib/isomac
>> PASS: support/tst-glibcpp
>>=20
>>=20
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
>>=20
>>=20
>>=20
>>=20
>=20
>

--REWcp5o6qg5E2FIxtWzk
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Tue, Mar 4, 2025 at 03:38 PM, Alexander Kanavin wrote:</div>
<div>
<blockquote>We certainly do not expect any tests in that recipe to run at b=
uild<br />time. It is intended only for building and installing tests for a=
<br />runtime environment which are then executed with ptest.<br /><br />If=
 you can figure out a fix that avoids unnecessary running, that<br />would =
be appreciated. I'd also question if we need the recipe at all<br />at this=
 point.</blockquote>
Attached the patch file (0001-glibc-y2038-tests-add-tests-special-in-run-bu=
ilt-tes.patch),</div>
<div>which shall generate only binaries and will not run the binaries.</div=
>
<div>Please review and let me know if you any info to share.</div>
<div>Let the recipe be there.<br />
<blockquote><br />Alex<br /><br />On Mon, 3 Mar 2025 at 13:46, rajmohan r v=
ia lists.yoctoproject.org<br />&lt;semc.2042=3Dgmail.com@lists.yoctoproject=
.org&gt; wrote:<br />
<blockquote>On Sat, Mar 1, 2025 at 04:25 AM, Khem Raj wrote:<br /><br />On =
2/28/25 6:44 AM, rajmohan r via lists.yoctoproject.org wrote:<br /><br />Hi=
 All<br /><br />For glibc-y2038-tests recipe, when 'bitbake -c do_check gli=
bc-y2038-tests'<br />is executed, could see that the tests binaries are als=
o run.<br /><br />Below is the do_check() contents from glibc-y2038-tests_2=
.39.bb<br /><br /># Just build tests for target - do not run them<br />do_c=
heck:append () {<br />oe_runmake -i check run-built-tests=3Dno<br />}<br />=
<br />On completion of do_check stage, test binaries are also run and test =
summary<br />details are present at the end of 'log.do_check' file and is g=
iven below:<br />from log.do_check and time it takes to complete the do_che=
ck() stage is<br />12min to 13min for scarthgap branch.<br />=3D=3D=3D Summ=
ary of results =3D=3D=3D<br />74 FAIL<br />1172 PASS<br />15 XFAIL<br /><br=
 /><br /><br />there are certain tests which do not require running, its po=
ssible thats being reported here. Can you share a sample of test which is e=
xecuted like it should happen at runtime?<br /><br />shown below few tests =
excerpts from failure list:<br /><br />FAIL: lint-makefiles<br />FAIL: conf=
orm/ISO/setjmp.h/conform<br />FAIL: conform/ISO/stdlib.h/conform<br />FAIL:=
 conform/ISO/stdlib.h/linknamespace<br />FAIL: conform/ISO11/setjmp.h/confo=
rm<br />FAIL: conform/ISO11/stdio.h/conform<br />FAIL: conform/ISO11/stdlib=
.h/conform<br />FAIL: conform/ISO11/stdlib.h/linknamespace<br />FAIL: confo=
rm/ISO11/wchar.h/conform<br />FAIL: conform/ISO99/setjmp.h/conform<br />FAI=
L: conform/ISO99/stdio.h/conform<br /><br />similarly below are few passed =
tests excerpts from pass list:<br />PASS: dlfcn/check-abi-libdl<br />PASS: =
elf/check-abi-ld<br />PASS: elf/check-abi-libc<br />PASS: elf/check-abi-ver=
sion-libc<br />PASS: elf/check-cet<br />PASS: elf/check-execstack<br />PASS=
: elf/check-initfini<br />PASS: elf/check-localplt<br />PASS: elf/check-tex=
trel<br />PASS: elf/check-tst-relr-pie<br />PASS: elf/check-wx-segment<br /=
>PASS: elf/tst-glibcelf<br />PASS: elf/tst-relro-ldso<br />PASS: elf/tst-re=
lro-libc<br />PASS: hesiod/check-abi-libnss_hesiod<br />PASS: locale/check-=
abi-libBrokenLocale<br />PASS: login/check-abi-libutil<br />PASS: malloc/ch=
eck-abi-libc_malloc_debug<br />PASS: math/check-abi-libm<br />PASS: math/te=
st-tgmath3-macro-list<br />PASS: mathvec/check-abi-libmvec<br />PASS: misc/=
tst-glibcsyscalls<br />PASS: misc/tst-mman-consts<br />PASS: misc/tst-mount=
-compile<br />PASS: misc/tst-mount-consts<br />PASS: misc/tst-pidfd-consts<=
br />FAIL: misc/tst-syscall-list<br />PASS: nis/check-abi-libnsl<br />PASS:=
 nptl/check-abi-libpthread<br />PASS: nptl_db/check-abi-libthread_db<br />P=
ASS: nptl_db/db-symbols<br />PASS: nss/check-abi-libnss_compat<br />PASS: n=
ss/check-abi-libnss_db<br />PASS: nss/check-abi-libnss_files<br />XFAIL: po=
six/annexc<br />PASS: resolv/check-abi-libanl<br />PASS: resolv/check-abi-l=
ibnss_dns<br />PASS: resolv/check-abi-libresolv<br />PASS: rt/check-abi-lib=
rt<br />PASS: signal/tst-signal-numbers<br />PASS: socket/tst-socket-consts=
<br />PASS: stdio-common/tst-errno-manual<br />PASS: stdlib/isomac<br />PAS=
S: support/tst-glibcpp<br /><br /><br /><br />Option 'run-built-tests' is n=
ot working as expected as said in the recipe<br />like build only the tests=
 binaries but do not run tests binaries.<br /><br />please let me know why =
test binaries are also been run when 'run-built-tests'<br />is set to 'no' =
for 'bitbake -c do_check glibc-y2038-tests' or running the<br />tests binar=
ies is an expected behaviour for the above do_check() stage.<br /><br />Tha=
nks for reading the message.<br />regards<br />rajmohan<br /><br /><br /><b=
r /><br /></blockquote>
</blockquote>
</div>

--REWcp5o6qg5E2FIxtWzk--

--ssBNEMLEEjhHmRDKUhpp
Content-Type: text/x-patch; name="0001-glibc-y2038-tests-add-tests-special-in-run-built-tes.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="0001-glibc-y2038-tests-add-tests-special-in-run-built-tes.patch"

RnJvbSAxZDZjOThhNDE0ZGU5ZWE1ZTU5YmRkMzE1MTJkNDViZDY4MmE0MmE2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiByYWptb2hhbiByIDxzZW1jLjIwNDJAZ21haWwuY29tPgpEYXRl
OiBNb24sIDI0IE1hciAyMDI1IDE1OjI1OjQzICswNTMwClN1YmplY3Q6IFtQQVRDSF0gZ2xpYmMt
eTIwMzgtdGVzdHM6YWRkIHRlc3RzLXNwZWNpYWwgaW4gcnVuLWJ1aWx0LXRlc3RzIHllcwoKSWYg
J3J1bi1idWlsdC10ZXN0cycgaXMgJ3llcycgcnVuIHRoZSB0ZXN0IGJpbmFyaWVzLCBlbHNlIGRv
IG5vdCBydW4KdGhlIHRlc3QgYmluYXJpZXMuCgpDdXJyZW50bHkgaXRzIHRha2luZyAxM21pbiB0
byBjb21wbGV0ZSBkb19jaGVjaygpIGZvciBnbGliYy15MjAzOC10ZXN0cy4KVGVzdCBiaW5hcmll
cyBhcmUgcnVuIGluIGRvX2NoZWNrKCkgc3RhZ2UgdGhvdWdoICdydW4tYnVpbHQtdGVzdHMnIGlz
CnNldCAnbm8nLiBXaGljaCBpcyB3cm9uZyBoZW5jZSBpbmNsdWRlICd0ZXN0cy1zcGVjaWFsJyB0
YXJnZXQgaW5zaWRlCnRoZSAncnVuLWJ1aWx0LXRlc3RzJyBjb25kaXRpb24gd2hlbiBzZXQgdG8g
J3llcycgdG8gYXZvaWQgcnVubmluZyB0aGUKdGVzdCBiaW5hcmllcy4KCkFsc28gcmVtb3ZlICd0
ZXN0cy1zcGVjaWFsJyB0YXJnZXQgZnJvbSB0aGUgJ3Rlc3RzJyBhbmQgJ3h0ZXN0cycgbGlzdAp3
aGVuIHJ1bi1idWlsdC10ZXN0cyBzZXQgdG8gJ25vJyB0byBhdm9pZCBydW5uaW5nIHRlc3QgYmlu
YXJpZXMuCgpBZnRlciB0aGlzIGNoYW5nZSwgbm8gYmluYXJ5IGlzIHJ1biBhbmQgdGltZSB0byBj
b21wbGV0ZSBkb19jaGVjaygpCnN0YWdlIGlzIDNtaW4uCgpVcHN0cmVhbS1TdGF0dXM6IEluYXBw
cm9wcmlhdGUgW29lLXNwZWNpZmljXQoKU2lnbmVkLW9mZi1ieTogcmFqbW9oYW4gciA8c2VtYy4y
MDQyQGdtYWlsLmNvbT4KLS0tCiAuLi4vZ2xpYmMvZ2xpYmMteTIwMzgtdGVzdHNfMi4zOS5iYiAg
ICAgICAgICAgfCAgIDEgKwogLi4udGVzdHMtc3BlY2lhbC1pbi1ydW4tYnVpbHQtdGVzdHMteWVz
LnBhdGNoIHwgMTg0ICsrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxODUgaW5z
ZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IG1ldGEvcmVjaXBlcy1jb3JlL2dsaWJjL2ds
aWJjL2luY2x1ZGUtdGVzdHMtc3BlY2lhbC1pbi1ydW4tYnVpbHQtdGVzdHMteWVzLnBhdGNoCgpk
aWZmIC0tZ2l0IGEvbWV0YS9yZWNpcGVzLWNvcmUvZ2xpYmMvZ2xpYmMteTIwMzgtdGVzdHNfMi4z
OS5iYiBiL21ldGEvcmVjaXBlcy1jb3JlL2dsaWJjL2dsaWJjLXkyMDM4LXRlc3RzXzIuMzkuYmIK
aW5kZXggYmU0OWNhNGNiNy4uOTBjMTEyYzEyZiAxMDA2NDQKLS0tIGEvbWV0YS9yZWNpcGVzLWNv
cmUvZ2xpYmMvZ2xpYmMteTIwMzgtdGVzdHNfMi4zOS5iYgorKysgYi9tZXRhL3JlY2lwZXMtY29y
ZS9nbGliYy9nbGliYy15MjAzOC10ZXN0c18yLjM5LmJiCkBAIC01LDYgKzUsNyBAQCBpbmhlcml0
IHB0ZXN0IGZlYXR1cmVzX2NoZWNrCiBSRVFVSVJFRF9ESVNUUk9fRkVBVFVSRVMgPSAicHRlc3Qi
CiAKIFNSQ19VUkkgKz0gIlwKKwlmaWxlOi8vaW5jbHVkZS10ZXN0cy1zcGVjaWFsLWluLXJ1bi1i
dWlsdC10ZXN0cy15ZXMucGF0Y2ggXAogCWZpbGU6Ly9ydW4tcHRlc3QgXAogIgogCmRpZmYgLS1n
aXQgYS9tZXRhL3JlY2lwZXMtY29yZS9nbGliYy9nbGliYy9pbmNsdWRlLXRlc3RzLXNwZWNpYWwt
aW4tcnVuLWJ1aWx0LXRlc3RzLXllcy5wYXRjaCBiL21ldGEvcmVjaXBlcy1jb3JlL2dsaWJjL2ds
aWJjL2luY2x1ZGUtdGVzdHMtc3BlY2lhbC1pbi1ydW4tYnVpbHQtdGVzdHMteWVzLnBhdGNoCm5l
dyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAuLjI1Nzc3YmUyZWIKLS0tIC9kZXYv
bnVsbAorKysgYi9tZXRhL3JlY2lwZXMtY29yZS9nbGliYy9nbGliYy9pbmNsdWRlLXRlc3RzLXNw
ZWNpYWwtaW4tcnVuLWJ1aWx0LXRlc3RzLXllcy5wYXRjaApAQCAtMCwwICsxLDE4NCBAQAorZ2xp
YmMteTIwMzgtdGVzdHM6IGluY2x1ZGUgdGVzdHMtc3BlY2lhbCBpbiBydW4tYnVpbHQtdGVzdHMg
eWVzCisKK0lmICdydW4tYnVpbHQtdGVzdHMnIGlzICd5ZXMnIHJ1biB0aGUgdGVzdCBiaW5hcmll
cywgZWxzZSBkbyBub3QgcnVuCit0aGUgdGVzdCBiaW5hcmllcy4KKworQ3VycmVudGx5IGl0cyB0
YWtpbmcgMTNtaW4gdG8gY29tcGxldGUgZG9fY2hlY2soKSBmb3IgZ2xpYmMteTIwMzgtdGVzdHMu
CitUZXN0IGJpbmFyaWVzIGFyZSBydW4gaW4gZG9fY2hlY2soKSBzdGFnZSB0aG91Z2ggJ3J1bi1i
dWlsdC10ZXN0cycgaXMKK3NldCAnbm8nLiBXaGljaCBpcyB3cm9uZyBoZW5jZSBpbmNsdWRlICd0
ZXN0cy1zcGVjaWFsJyB0YXJnZXQgaW5zaWRlCit0aGUgJ3J1bi1idWlsdC10ZXN0cycgY29uZGl0
aW9uIHdoZW4gc2V0IHRvICd5ZXMnIHRvIGF2b2lkIHJ1bm5pbmcgdGhlCit0ZXN0IGJpbmFyaWVz
LgorCitBbHNvIHJlbW92ZSAndGVzdHMtc3BlY2lhbCcgdGFyZ2V0IGZyb20gdGhlICd0ZXN0cycg
YW5kICd4dGVzdHMnIGxpc3QKK3doZW4gcnVuLWJ1aWx0LXRlc3RzIHNldCB0byAnbm8nIHRvIGF2
b2lkIHJ1bm5pbmcgdGVzdCBiaW5hcmllcy4KKworQWZ0ZXIgdGhpcyBjaGFuZ2UsIG5vIGJpbmFy
eSBpcyBydW4gYW5kIHRpbWUgdG8gY29tcGxldGUgZG9fY2hlY2soKQorc3RhZ2UgaXMgM21pbi4K
KworVXBzdHJlYW0tU3RhdHVzOiBJbmFwcHJvcHJpYXRlIFtvZS1zcGVjaWZpY10KKworU2lnbmVk
LW9mZi1ieTogcmFqbW9oYW4gciA8c2VtYy4yMDQyQGdtYWlsLmNvbT4KKy0tLQorIE1ha2VmaWxl
ICB8IDE2ICsrKysrKysrKysrKysrKysKKyBNYWtlcnVsZXMgfCAgMiArKworIFJ1bGVzICAgICB8
ICA4ICsrKysrKy0tCisgMyBmaWxlcyBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQorCitkaWZmIC0tZ2l0IGEvTWFrZWZpbGUgYi9NYWtlZmlsZQoraW5kZXggYzhiN2Uz
Zi4uMjgxMmU5NyAxMDA2NDQKKy0tLSBhL01ha2VmaWxlCisrKysgYi9NYWtlZmlsZQorQEAgLTU0
NSwyMSArNTQ1LDI2IEBAIHRlc3RzLWNsZWFuOiBkby10ZXN0cy1jbGVhbgorIAlAJChNQUtFKSBz
dWJkaXJfdGVzdGNsZWFuIG5vX2RlcHM9dAorIAorIGlmbmVxICgsJChDWFgpKQorK2lmZXEgKCQo
cnVuLWJ1aWx0LXRlc3RzKSx5ZXMpCisgdnBhdGggYysrLXR5cGVzLmRhdGEgJCgrc3lzZGVwX2Rp
cnMpCisgCisgdGVzdHMtc3BlY2lhbCArPSAkKG9ianBmeCljKystdHlwZXMtY2hlY2sub3V0Cisg
JChvYmpwZngpYysrLXR5cGVzLWNoZWNrLm91dDogYysrLXR5cGVzLmRhdGEgc2NyaXB0cy9jaGVj
ay1jKystdHlwZXMuc2gKKyAJc2NyaXB0cy9jaGVjay1jKystdHlwZXMuc2ggJDwgJChDWFgpICQo
ZmlsdGVyLW91dCAtc3RkPWdudTExICQoK2djY3dhcm4tYyksJChDRkxBR1MpKSAkKENQUEZMQUdT
KSA+ICRAOyBcCisgCSQoZXZhbHVhdGUtdGVzdCkKKytlbmRpZiAjICQocnVuLWJ1aWx0LXRlc3Rz
KSA9IHllcworIGVuZGlmCisgCisraWZlcSAoJChydW4tYnVpbHQtdGVzdHMpLHllcykKKyB0ZXN0
cy1zcGVjaWFsICs9ICQob2JqcGZ4KWNoZWNrLWxvY2FsLWhlYWRlcnMub3V0CisgJChvYmpwZngp
Y2hlY2stbG9jYWwtaGVhZGVycy5vdXQ6IHNjcmlwdHMvY2hlY2stbG9jYWwtaGVhZGVycy5zaAor
IAlBV0s9JyQoQVdLKScgc2NyaXB0cy9jaGVjay1sb2NhbC1oZWFkZXJzLnNoIFwKKyAJICAiJChp
bmNsdWRlZGlyKSIgIiQob2JqcGZ4KSIgPCAvZGV2L251bGwgPiAkQDsgXAorIAkkKGV2YWx1YXRl
LXRlc3QpCisrZW5kaWYgIyAkKHJ1bi1idWlsdC10ZXN0cykgPSB5ZXMKKyAKKyBpZm5lcSAiJCho
ZWFkZXJzKSIgIiIKKytpZmVxICgkKHJ1bi1idWlsdC10ZXN0cykseWVzKQorICMgU3BlY2lhbCB0
ZXN0IG9mIGFsbCB0aGUgaW5zdGFsbGVkIGhlYWRlcnMgaW4gdGhpcyBkaXJlY3RvcnkuCisgdGVz
dHMtc3BlY2lhbCArPSAkKG9ianBmeCljaGVjay1pbnN0YWxsZWQtaGVhZGVycy1jLm91dAorIGxp
Ym9mLWNoZWNrLWluc3RhbGxlZC1oZWFkZXJzLWMgOj0gdGVzdHN1aXRlCitAQCAtNTY5LDggKzU3
NCwxMCBAQCAkKG9ianBmeCljaGVjay1pbnN0YWxsZWQtaGVhZGVycy1jLm91dDogXAorIAkgICIk
KENDKSAkKGZpbHRlci1vdXQgLXN0ZD0lLCQoQ0ZMQUdTKSkgLURfSVNPTUFDICQoK2luY2x1ZGVz
KSIgXAorIAkgICQoaGVhZGVycykgPiAkQDsgXAorIAkkKGV2YWx1YXRlLXRlc3QpCisrZW5kaWYg
IyAkKHJ1bi1idWlsdC10ZXN0cykgPSB5ZXMKKyAKKyBpZm5lcSAiJChDWFgpIiAiIgorK2lmZXEg
KCQocnVuLWJ1aWx0LXRlc3RzKSx5ZXMpCisgdGVzdHMtc3BlY2lhbCArPSAkKG9ianBmeCljaGVj
ay1pbnN0YWxsZWQtaGVhZGVycy1jeHgub3V0CisgbGlib2YtY2hlY2staW5zdGFsbGVkLWhlYWRl
cnMtY3h4IDo9IHRlc3RzdWl0ZQorICQob2JqcGZ4KWNoZWNrLWluc3RhbGxlZC1oZWFkZXJzLWN4
eC5vdXQ6IFwKK0BAIC01NzksMTQgKzU4NiwxOCBAQCAkKG9ianBmeCljaGVjay1pbnN0YWxsZWQt
aGVhZGVycy1jeHgub3V0OiBcCisgCSAgIiQoQ1hYKSAkKGZpbHRlci1vdXQgLXN0ZD0lLCQoQ1hY
RkxBR1MpKSAtRF9JU09NQUMgJCgraW5jbHVkZXMpIiBcCisgCSAgJChoZWFkZXJzKSA+ICRAOyBc
CisgCSQoZXZhbHVhdGUtdGVzdCkKKytlbmRpZiAjICQocnVuLWJ1aWx0LXRlc3RzKSA9IHllcwor
IGVuZGlmICMgJChDWFgpCisgCisraWZlcSAoJChydW4tYnVpbHQtdGVzdHMpLHllcykKKyB0ZXN0
cy1zcGVjaWFsICs9ICQob2JqcGZ4KWNoZWNrLXdyYXBwZXItaGVhZGVycy5vdXQKKyAkKG9ianBm
eCljaGVjay13cmFwcGVyLWhlYWRlcnMub3V0OiBzY3JpcHRzL2NoZWNrLXdyYXBwZXItaGVhZGVy
cy5weSAkKGhlYWRlcnMpCisgCSQoUFlUSE9OKSAkPCAtLXJvb3Q9LiAtLXN1YmRpcj0uICQoaGVh
ZGVycykgXAorIAkgIC0tZ2VuZXJhdGVkICQoY29tbW9uLWdlbmVyYXRlZCkgPiAkQDsgJChldmFs
dWF0ZS10ZXN0KQorK2VuZGlmICMgJChydW4tYnVpbHQtdGVzdHMpID0geWVzCisgZW5kaWYgIyAk
KGhlYWRlcnMpCisgCisraWZlcSAoJChydW4tYnVpbHQtdGVzdHMpLHllcykKKyAjIExpbnQgYWxs
IE1ha2VmaWxlczsgaW5jbHVkaW5nIHRoaXMgb25lLiAgUGFzcyBgcHdkYCBhcyB0aGUgc291cmNl
CisgIyBkaXJlY3Rvcnkgc2luY2UgdGhlIHRvcC1sZXZlbCBNYWtlZmlsZSBpcyBpbiB0aGUgcm9v
dCBvZiB0aGUgc291cmNlCisgIyB0cmVlIGFuZCB0aGVzZSB0ZXN0cyBhcmUgcnVuIGZyb20gdGhl
cmUuICBXZSBhZGQgbGlnaHQtd2VpZ2h0IGxpbnRpbmcKK0BAIC01OTYsNyArNjA3LDkgQEAgdGVz
dHMtc3BlY2lhbCArPSAkKG9ianBmeClsaW50LW1ha2VmaWxlcy5vdXQKKyAkKG9ianBmeClsaW50
LW1ha2VmaWxlcy5vdXQ6IHNjcmlwdHMvbGludC1tYWtlZmlsZXMuc2gKKyAJJChTSEVMTCkgJDwg
IiQoUFlUSE9OKSIgYHB3ZGAgPiAkQCA7IFwKKyAJJChldmFsdWF0ZS10ZXN0KQorK2VuZGlmICMg
JChydW4tYnVpbHQtdGVzdHMpID0geWVzCisgCisraWZlcSAoJChydW4tYnVpbHQtdGVzdHMpLHll
cykKKyAjIExpbmsgbGliYy5hIGFzIGEgd2hvbGUgdG8gdmVyaWZ5IHRoYXQgaXQgZG9lcyBub3Qg
Y29udGFpbiBtdWx0aXBsZQorICMgZGVmaW5pdGlvbnMgb2YgYW55IHN5bWJvbHMuCisgdGVzdHMt
c3BlY2lhbCArPSAkKG9ianBmeClsaW5rLXN0YXRpYy1saWJjLm91dAorQEAgLTYwNCw2ICs2MTcs
NyBAQCAkKG9ianBmeClsaW5rLXN0YXRpYy1saWJjLm91dDoKKyAJJChMSU5LLm8pICQod2hvbGUt
YXJjaGl2ZSkgLW5vc3RkbGliIC1ub3N0YXJ0ZmlsZXMgLXIgXAorIAkgICQob2JqcGZ4KWxpYmMu
YSAtbyAvZGV2L251bGwgPiAkQCAyPiYxOyBcCisgCSQoZXZhbHVhdGUtdGVzdCkKKytlbmRpZiAj
ICQocnVuLWJ1aWx0LXRlc3RzKSA9IHllcworIAorICMgUHJpbnQgdGVzdCBzdW1tYXJ5IGZvciB0
ZXN0cyBpbiAkMSAuc3VtIGZpbGU7CisgIyAkMiBpcyBvcHRpb25hbCB0ZXN0IGlkZW50aWZpZXIu
CitAQCAtNjg0LDYgKzY5OCw3IEBAIGVuZGlmCisgCXJtIC1mICQoc3ltYm9saWMtbGluay1saXN0
KQorIAl0b3VjaCAkKG9ianBmeCl0ZXN0cm9vdC5wcmlzdGluZS9pbnN0YWxsLnN0YW1wCisgCisr
aWZlcSAoJChydW4tYnVpbHQtdGVzdHMpLHllcykKKyB0ZXN0cy1zcGVjaWFsLW5vdGRpciA9ICQo
cGF0c3Vic3QgJChvYmpwZngpJSwgJSwgJCh0ZXN0cy1zcGVjaWFsKSkKKyB0ZXN0czogJCh0ZXN0
cy1zcGVjaWFsKQorIAkkKC4uKXNjcmlwdHMvbWVyZ2UtdGVzdC1yZXN1bHRzLnNoIC1zICQob2Jq
cGZ4KSAiIiBcCitAQCAtNjk4LDYgKzcxMyw3IEBAIHh0ZXN0czoKKyAJICAkKHNvcnQgJChzdWJk
aXJzKSkgXAorIAkgID4gJChvYmpwZngpeHRlc3RzLnN1bQorIAkkKGNhbGwgc3VtbWFyaXplLXRl
c3RzLHh0ZXN0cy5zdW0sIGZvciBleHRyYSB0ZXN0cykKKytlbmRpZiAjICQocnVuLWJ1aWx0LXRl
c3RzKSA9IHllcworIAorICMgVGhlIHJlYWxjbGVhbiB0YXJnZXQgaXMganVzdCBsaWtlIGRpc3Rj
bGVhbiBmb3IgdGhlIHBhcmVudCwgYnV0IHdlIHdhbnQKKyAjIHRoZSBzdWJkaXJzIHRvIGtub3cg
dGhlIGRpZmZlcmVuY2UgaW4gY2FzZSB0aGV5IGNhcmUuCitkaWZmIC0tZ2l0IGEvTWFrZXJ1bGVz
IGIvTWFrZXJ1bGVzCitpbmRleCAwMDM2NWJjLi44NDNmMWMwIDEwMDY0NAorLS0tIGEvTWFrZXJ1
bGVzCisrKysgYi9NYWtlcnVsZXMKK0BAIC0xMjI1LDYgKzEyMjUsNyBAQCBpbmNsdWRlICQocGF0
c3Vic3QgJSwkKC4uKWxpYm9mLWl0ZXJhdG9yLm1rLCQoY3BwLXNyY3MtbGVmdCkpCisgZW5kaWYK
KyAKKyBpZmVxICgkKGJ1aWxkLXNoYXJlZCkseWVzKQorK2lmZXEgKCQocnVuLWJ1aWx0LXRlc3Rz
KSx5ZXMpCisgIyBHZW5lcmF0ZSBub3JtYWxpemVkIGxpc3RzIG9mIHN5bWJvbHMsIHZlcnNpb25z
LCBhbmQgZGF0YSBzaXplcy4KKyAjIFRoaXMgaXMgaGFuZHkgZm9yIGNoZWNraW5nIGFnYWluc3Qg
ZXhpc3RpbmcgbGlicmFyeSBiaW5hcmllcy4KKyAKK0BAIC0xMzE0LDYgKzEzMTUsNyBAQCB0ZXN0
cy1zcGVjaWFsICs9ICQoY2hlY2stYWJpLWxpc3QpCisgZW5kaWYKKyBlbmRpZgorIAorK2VuZGlm
ICMgJChydW4tYnVpbHQtdGVzdHMpID0geWVzCisgZW5kaWYKKyAMCisgRk9SQ0U6CitkaWZmIC0t
Z2l0IGEvUnVsZXMgYi9SdWxlcworaW5kZXggOTAxMGM1ZC4uNjgyNWY2MyAxMDA2NDQKKy0tLSBh
L1J1bGVzCisrKysgYi9SdWxlcworQEAgLTkzLDYgKzkzLDcgQEAgJChvYmpwZngpY2hlY2staW5z
dGFsbGVkLWhlYWRlcnMtYy5vdXQ6IFwKKyBpZm5lcSAiJChDWFgpIiAiIgorICMgSWYgYSBDKysg
Y29tcGlsZXIgaXMgYXZhaWxhYmxlLCBhbHNvIHRlc3QgdGhhdCB0aGV5IGNhbiBiZSBjb21waWxl
ZAorICMgaW4gaXNvbGF0aW9uIGFzIEMrKy4KKytpZmVxICgkKHJ1bi1idWlsdC10ZXN0cykseWVz
KQorIHRlc3RzLXNwZWNpYWwgKz0gJChvYmpwZngpY2hlY2staW5zdGFsbGVkLWhlYWRlcnMtY3h4
Lm91dAorIGxpYm9mLWNoZWNrLWluc3RhbGxlZC1oZWFkZXJzLWN4eCA6PSB0ZXN0c3VpdGUKKyAk
KG9ianBmeCljaGVjay1pbnN0YWxsZWQtaGVhZGVycy1jeHgub3V0OiBcCitAQCAtMTAxLDggKzEw
MiwxMCBAQCAkKG9ianBmeCljaGVjay1pbnN0YWxsZWQtaGVhZGVycy1jeHgub3V0OiBcCisgCSAg
IiQoQ1hYKSAkKGZpbHRlci1vdXQgLXN0ZD0lLCQoQ1hYRkxBR1MpKSAtRF9JU09NQUMgJCgraW5j
bHVkZXMpIiBcCisgCSAgJChoZWFkZXJzKSA+ICRAOyBcCisgCSQoZXZhbHVhdGUtdGVzdCkKKytl
bmRpZiAjICQocnVuLWJ1aWx0LXRlc3RzKSA9IHllcworIGVuZGlmICMgJChDWFgpCisgCisraWZl
cSAoJChydW4tYnVpbHQtdGVzdHMpLHllcykKKyAjIFRlc3QgdGhhdCBhIHdyYXBwZXIgaGVhZGVy
IGV4aXN0cyBpbiBpbmNsdWRlLyBmb3IgZWFjaCBub24tc3lzZGVwcyBoZWFkZXIuCisgIyBUaGlz
IHNjcmlwdCBkb2VzIG5vdCBuZWVkICQocHktZW52KS4KKyB0ZXN0cy1zcGVjaWFsICs9ICQob2Jq
cGZ4KWNoZWNrLXdyYXBwZXItaGVhZGVycy5vdXQKK0BAIC0xMjAsNiArMTIzLDcgQEAgJChvYmpw
ZngpY2hlY2stb2Jzb2xldGUtY29uc3RydWN0cy5vdXQ6IFwKKyAgICAgJCguLilzY3JpcHRzL2No
ZWNrLW9ic29sZXRlLWNvbnN0cnVjdHMucHkgJChoZWFkZXJzKQorIAkkKFBZVEhPTikgJF4gPiAk
QCAyPiYxOyBcCisgCSQoZXZhbHVhdGUtdGVzdCkKKytlbmRpZiAjICQocnVuLWJ1aWx0LXRlc3Rz
KSA9IHllcworIAorIGVuZGlmICMgJChoZWFkZXJzKQorIAwKK0BAIC0xNDYsOSArMTUwLDkgQEAg
aWZlcSAoJChydW4tYnVpbHQtdGVzdHMpLG5vKQorIHRlc3RzOiAkKGFkZHByZWZpeCAkKG9ianBm
eCksJChmaWx0ZXItb3V0ICQodGVzdHMtdW5zdXBwb3J0ZWQpLCBcCisgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgJCh0ZXN0cykgJCh0ZXN0cy1pbnRlcm5hbCkgXAor
IAkJCQkJICAkKHRlc3RzLWNvbnRhaW5lcikpIFwKKy0JCQkgICAgICQodGVzdC1zcmNzKSkgJCh0
ZXN0cy1zcGVjaWFsKSBcCisrCQkJICAgICAkKHRlc3Qtc3JjcykpIFwKKyAJCQkgICAgICQodGVz
dHMtcHJpbnRlcnMtcHJvZ3JhbXMpCisteHRlc3RzOiB0ZXN0cyAkKHh0ZXN0cy1zcGVjaWFsKQor
K3h0ZXN0czogdGVzdHMKKyBlbHNlCisgdGVzdHM6ICQodGVzdHM6JT0kKG9ianBmeCklLm91dCkg
JCh0ZXN0cy1pbnRlcm5hbDolPSQob2JqcGZ4KSUub3V0KSBcCisgICAgICAgICQodGVzdHMtY29u
dGFpbmVyOiU9JChvYmpwZngpJS5vdXQpIFwKLS0gCjIuMzQuMQoK

--ssBNEMLEEjhHmRDKUhpp--

